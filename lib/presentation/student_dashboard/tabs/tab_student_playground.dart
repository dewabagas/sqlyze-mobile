import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/helpers/database_helper.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/inputs/input_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/inputs/input_secondary.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class TabStudentPlayground extends StatefulWidget {
  const TabStudentPlayground({super.key});

  @override
  State<TabStudentPlayground> createState() => _TabStudentPlaygroundState();
}

class _TabStudentPlaygroundState extends State<TabStudentPlayground> {
  TextEditingController queryController = TextEditingController();
  Future<List<Map<String, dynamic>>>? _queryResults;
  final List<String> queryItems = [
    'SELECT',
    'INSERT',
    'UPDATE',
    'DELETE',
  ];

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'SQL Playground',
        hasBack: false,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text('Tap to use on of these Queries !',
                  style: TextStyles.labelMedium
                      .copyWith(color: AppColors.charcoal)),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.lightGrey4,
                  border: Border.all(color: AppColors.lightGrey4),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(4, (index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            if (queryController.text.isEmpty) {
                              queryController.text = queryItems[index];
                            } else {
                              queryController.text = queryController.text +
                                  ' ' +
                                  queryItems[index];
                            }
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          child: Text(queryItems[index],
                              style: TextStyles.bodyMedium
                                  .copyWith(color: AppColors.white)),
                        ),
                      );
                    })),
              ),
              SizedBox(height: 20.h),
              Text('Or you can manually type it here !',
                  style: TextStyles.labelMedium
                      .copyWith(color: AppColors.charcoal)),
              InputSecondary(
                controller: queryController,
                hintText: 'Enter SQL Query',
                labelPadding: EdgeInsets.zero,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                    onTap: () {
                      queryController.text = '';
                    },
                    child: Text('Clear Query',
                        style: TextStyles.bodyVerySmall.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w700))),
              ),
              SizedBox(height: 10.h),
              ButtonPrimary(
                title: 'Execute Query',
                onPressed: _executeQuery,
              ),
              Expanded(
                child: _buildResultsList(),
              ),
            ],
          ),
        ));
  }

  Widget _buildResultsList() {
    if (_queryResults == null) {
      return Center(child: Text('No results'));
    }

    return FutureBuilder<List<Map<String, dynamic>>>(
      future: _queryResults,
      builder: (BuildContext context,
          AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              log('snapshot ${snapshot.data}');
              return ListTile(
                title: Text(snapshot.data![index].toString()),
              );
            },
          );
        }
      },
    );
  }

  void _executeQuery() async {
    String query = queryController.text;
    try {
      Database db = await DatabaseHelper().database;
      List<Map<String, dynamic>> results = await db.rawQuery(query);
      setState(() {
        _queryResults = Future.value(results);
      });
    } catch (e) {
      setState(() {
        _queryResults = Future.error(e.toString());
      });
    }
  }
}
