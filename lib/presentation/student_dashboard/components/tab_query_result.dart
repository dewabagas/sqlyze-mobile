// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class TabQueryResult extends StatefulWidget {
  Future<List<Map<String, dynamic>>>? queryResults;
  TabQueryResult({
    Key? key,
    this.queryResults,
  }) : super(key: key);

  @override
  State<TabQueryResult> createState() => _TabQueryResultState();
}

class _TabQueryResultState extends State<TabQueryResult> {
  Future<List<Map<String, dynamic>>>? queryResults;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: buildQueryResult(),
    );
  }

  Widget buildQueryResult() {
    if (widget.queryResults == null) {
      return Center(child: Text('No results'));
    }

    return FutureBuilder<List<Map<String, dynamic>>>(
      future: widget.queryResults,
      builder: (BuildContext context,
          AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              log('snapshot query ${snapshot.data}');
              return ListTile(
                tileColor: AppColors.charcoal,
                title: Text(
                  snapshot.data![index].toString(),
                  style: TextStyles.bodySmall,
                ),
              );
            },
          );
        }
      },
    );
  }
}
