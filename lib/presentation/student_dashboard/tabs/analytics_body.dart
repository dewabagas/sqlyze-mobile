import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sqlyze/application/analytics/learning_analytic_bloc/learning_analytic_bloc.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/radial_percentage_result_container.dart';
import 'package:sqlyze/presentation/shared/widgets/charts/analytic_line_chart.dart';
import 'package:sqlyze/presentation/shared/widgets/errors/error_page.dart';
import 'package:sqlyze/presentation/shared/widgets/others/expandable_page_view/expandable_page_view.dart';
import 'package:sqlyze/presentation/shared/widgets/others/indicator.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:sqlyze/presentation/student_dashboard/components/analytic_performance_body.dart';
import 'package:sqlyze/presentation/student_dashboard/components/analytic_progress_body.dart';
import 'package:sqlyze/presentation/student_dashboard/components/tab_analytics.dart';

class AnalyticsBody extends StatefulWidget {
  final int userId;
  const AnalyticsBody({super.key, required this.userId});

  @override
  State<AnalyticsBody> createState() => _AnalyticsBodyState();
}

class _AnalyticsBodyState extends State<AnalyticsBody> {
  int touchedIndex = -1;
  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LearningAnalyticBloc>(
      create: (context) => getIt<LearningAnalyticBloc>()
        ..add(LearningAnalyticEvent.getLearningAnalytic(widget.userId)),
      child: BlocBuilder<LearningAnalyticBloc, LearningAnalyticState>(
        builder: (context, state) {
          return state.map(
              initial: (value) => const SizedBox.shrink(),
              loadInProgress: (value) => const SizedBox.shrink(),
              loadSuccess: (value) {
                debugPrint('analytic value ${value.learningAnalytic}');
                return buildAnalytic(value.learningAnalytic!);
              },
              loadFailure: (value) {
                if (value.message ==
                    'The requested information could not be found') {
                  return buildAnalyticEmpty();
                } else {
                  return ErrorPage(message: value.message);
                }
              });
        },
      ),
    );
  }

  Widget buildAnalyticEmpty() {
    return PageDecorationTop(
        hasBack: false,
        appBarTitle: 'SQLyze',
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIllustrations.illEmpty),
              SizedBox(height: 10.h),
              Text(
                'Anda belum menyelesaikan Materi, Yuk selesaikan dulu materi agar dapat melihat analisis.',
                style: TextStyles.bodySmall,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }

  Widget buildAnalytic(LearningAnalytic learningAnalytic) {
    debugPrint('buildAnalytic $learningAnalytic');
    return PageDecorationTop(
        appBarTitle: 'Analisis Belajar',
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: TabHeaderAnalytics(
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
              ),
              SizedBox(height: 10.h),
              ExpandablePageView(
                dragStartBehavior: DragStartBehavior.start,
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                animateFirstPage: true,
                onPageChanged: (pageIndex) {
                  setState(() {
                    selectedIndex = pageIndex;
                  });
                },
                children: [
                  AnalyticProgressBody(analyticsData: learningAnalytic),
                  AnalyticPerformanceBody(analyticsData: learningAnalytic)
                ],
              ),
            ],
          ),
        ));
    // return PageDecorationTop(
    //   appBarTitle: 'Analytics',
    //   child: SingleChildScrollView(
    //     child: AspectRatio(
    //       aspectRatio: 1.3,
    //       child: Row(
    //         children: <Widget>[
    //           const SizedBox(
    //             height: 18,
    //           ),
    //           Expanded(
    //             child: AspectRatio(
    //               aspectRatio: 1,
    //               child: PieChart(
    //                 PieChartData(
    //                   pieTouchData: PieTouchData(
    //                     touchCallback: (FlTouchEvent event, pieTouchResponse) {
    //                       setState(() {
    //                         if (!event.isInterestedForInteractions ||
    //                             pieTouchResponse == null ||
    //                             pieTouchResponse.touchedSection == null) {
    //                           touchedIndex = -1;
    //                           return;
    //                         }
    //                         touchedIndex = pieTouchResponse
    //                             .touchedSection!.touchedSectionIndex;
    //                       });
    //                     },
    //                   ),
    //                   borderData: FlBorderData(
    //                     show: false,
    //                   ),
    //                   sectionsSpace: 0,
    //                   centerSpaceRadius: 40,
    //                   sections: showingSections(learningAnalytic),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           Column(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: <Widget>[
    //               Indicator(
    //                 color: AppColors.blue,
    //                 text: 'Third',
    //                 isSquare: true,
    //               ),
    //               SizedBox(
    //                 height: 4,
    //               ),
    //               Indicator(
    //                 color: AppColors.green,
    //                 text: 'Fourth',
    //                 isSquare: true,
    //               ),
    //               SizedBox(
    //                 height: 18,
    //               ),
    //             ],
    //           ),
    //           const SizedBox(
    //             width: 28,
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  List<PieChartSectionData> showingSections(LearningAnalytic analytics) {
    debugPrint('total Anwer');
    debugPrint('${analytics.totalCorrectAnswers}');
    final totalAnswers = (analytics.totalCorrectAnswers ?? 0) +
        (analytics.totalIncorrectAnswers ?? 0);

    // Convert the answer totals to percentages
    final correctPercentage = ((analytics.totalCorrectAnswers ?? 0) /
            (totalAnswers == 0 ? 1 : totalAnswers)) *
        100;
    final incorrectPercentage = ((analytics.totalIncorrectAnswers ?? 0) /
            (totalAnswers == 0 ? 1 : totalAnswers)) *
        100;

    return [
      PieChartSectionData(
        color: Colors.green, // Color for correct answers
        value: correctPercentage,
        title: '${correctPercentage.toStringAsFixed(1)}%',
        radius: 50.0,
        titleStyle: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: AppColors.primary,
        ),
      ),
      PieChartSectionData(
        color: Colors.red, // Color for incorrect answers
        value: incorrectPercentage,
        title: '${incorrectPercentage.toStringAsFixed(1)}%',
        radius: 50.0,
        titleStyle: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: AppColors.secondary,
        ),
      ),
    ];
  }
}
