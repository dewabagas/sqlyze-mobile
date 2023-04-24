import 'dart:developer';

import 'package:date_format/date_format.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/helpers/database_helper.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/inputs/input_secondary.dart';
import 'package:sqlyze/presentation/shared/widgets/others/expandable_page_view/expandable_page_view.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:sqlyze/presentation/student_dashboard/components/tab_playground_query.dart';
import 'package:sqlyze/presentation/student_dashboard/components/tab_query_result.dart';
import 'package:sqlyze/presentation/student_dashboard/components/tab_query_table.dart';

class TabStudentPlayground extends StatefulWidget {
  const TabStudentPlayground({super.key});

  @override
  State<TabStudentPlayground> createState() => _TabStudentPlaygroundState();
}

class _TabStudentPlaygroundState extends State<TabStudentPlayground> {
  int selectedIndex = 0;
  late PageController pageController;
  TextEditingController queryController = TextEditingController();
  Future<List<Map<String, dynamic>>>? queryResults;
  Future<List<String>>? tables;
  final List<String> queryItems = [
    'SELECT',
    'INSERT',
    'UPDATE',
    'DELETE',
  ];

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'SQL Playground',
        hasBack: false,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                ExpansionTile(
                  shape: const RoundedRectangleBorder(),
                  childrenPadding: EdgeInsets.zero,
                  tilePadding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  collapsedIconColor: AppColors.charcoal,
                  iconColor: AppColors.primary,
                  title: Text('Tap to use on of these Queries !',
                      style: TextStyles.labelMedium
                          .copyWith(color: AppColors.charcoal)),
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 10.h),
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
                                    queryController.text =
                                        '${queryController.text} ${queryItems[index]}';
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
                  ],
                ),
                SizedBox(height: 10.h),
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
                  onPressed: executeQuery,
                ),
                SizedBox(height: 10.h),
                TabPlaygroundQuery(
                  selectedIndex: selectedIndex,
                  onValueChanged: (i) {
                    pageController.animateToPage(
                      i,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.ease,
                    );
                    setState(() {
                      selectedIndex = i;
                    });
                  },
                ),
                ExpandablePageView(
                  dragStartBehavior: DragStartBehavior.start,
                  controller: pageController,
                  physics: PageScrollPhysics()
                      .applyTo(const ClampingScrollPhysics()),
                  animateFirstPage: true,
                  onPageChanged: (pageIndex) {
                    setState(() {
                      selectedIndex = pageIndex;
                    });
                  },
                  children: [
                    TabQueryTable(),
                    TabQueryResult(
                      queryResults: queryResults,
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildQueryResult() {
    if (queryResults == null) {
      return Center(child: Text('No results'));
    }

    return FutureBuilder<List<Map<String, dynamic>>>(
      future: queryResults,
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

  void executeQuery() async {
    String query = queryController.text;
    try {
      Database db = await DatabaseHelper().database;
      List<Map<String, dynamic>> results = await db.rawQuery(query);
      setState(() {
        queryResults = Future.value(results);
        selectedIndex = 1;
      });
      pageController.animateToPage(
        1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.ease,
      );
    } catch (e) {
      setState(() {
        queryResults = Future.error(e.toString());
      });
    }
  }
}
