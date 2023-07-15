import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlyze/application/analytics/learning_analytic_bloc/learning_analytic_bloc.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/errors/error_page.dart';
import 'package:sqlyze/presentation/shared/widgets/others/indicator.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class TabStudentAnalytics extends StatefulWidget {
  const TabStudentAnalytics({super.key});

  @override
  State<TabStudentAnalytics> createState() => _TabStudentAnalyticsState();
}

class _TabStudentAnalyticsState extends State<TabStudentAnalytics> {
  int touchedIndex = -1;
  late int userId;

  @override
  void initState() {
    getUserId();
    super.initState();
  }

  getUserId() async {
    int tempUserId =
        await getIntValuesPreference(key: PreferenceConstants.userId);
    setState(() {
      userId = tempUserId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        hasBack: false,
        appBarTitle: 'Learning Analysis',
        child: BlocProvider<LearningAnalyticBloc>(
          create: (context) => getIt<LearningAnalyticBloc>()
            ..add(LearningAnalyticEvent.getLearningAnalytic(userId)),
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
                    return ErrorPage(message: value.message);
                  });
            },
          ),
        ));
  }

  Widget buildAnalytic(LearningAnalytic learningAnalytic) {
    debugPrint('buildAnalytic $learningAnalytic');
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(learningAnalytic),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Indicator(
                color: AppColors.softBlue,
                text: 'First',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: AppColors.red,
                text: 'Second',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: AppColors.blue,
                text: 'Third',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: AppColors.green,
                text: 'Fourth',
                isSquare: true,
              ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
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
