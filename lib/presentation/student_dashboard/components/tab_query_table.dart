import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/helpers/database_helper.dart';

import '../../core/styles/app_colors.dart';

class TabQueryTable extends StatefulWidget {
  const TabQueryTable({super.key});

  @override
  State<TabQueryTable> createState() => _TabQueryTableState();
}

class _TabQueryTableState extends State<TabQueryTable> {
  Future<List<String>>? tables;

  @override
  void initState() {
    tables = getAllTables();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          buildTableList(),
        ],
      ),
    );
  }

  Widget buildTableList() {
    return FutureBuilder<List<String>>(
      future: tables,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final tables = snapshot.data!;
            return ListView.builder(
              itemCount: tables.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ExpansionTile(
                  title: Text(tables[index],
                      style: TextStyles.labelMedium
                          .copyWith(color: AppColors.charcoal)),
                  children: [
                    FutureBuilder<List<Map<String, dynamic>>>(
                      future: getTableProperties(tables[index]),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            final properties = snapshot.data!;
                            return Column(
                              children: properties.map((property) {
                                return ListTile(
                                  title: Text(property['name'].toString()),
                                  subtitle: Text('Type: ${property['type']}'),
                                );
                              }).toList(),
                            );
                          }
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ],
                );
              },
            );
          }
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Future<List<String>> getAllTables() async {
    log('getAllTables');
    Database db = await DatabaseHelper().database;
    final List<Map<String, dynamic>> tables =
        await db.rawQuery("SELECT name FROM sqlite_master WHERE type='table'");
    final tableNames = tables.map((table) => table['name'] as String).toList();
    return tableNames;
  }

  Future<List<Map<String, dynamic>>> getTableProperties(
      String tableName) async {
    Database db = await DatabaseHelper().database;
    final List<Map<String, dynamic>> columns =
        await db.rawQuery('PRAGMA table_info($tableName)');
    return columns;
  }
}
