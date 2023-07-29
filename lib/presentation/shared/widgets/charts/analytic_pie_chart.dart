import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/others/indicator.dart';

class AnalyticPieChart extends StatefulWidget {
  final LearningAnalytic analyticsData;
  const AnalyticPieChart({super.key, required this.analyticsData});

  @override
  State<AnalyticPieChart> createState() => _AnalyticPieChartState();
}

class _AnalyticPieChartState extends State<AnalyticPieChart> {
  int touchedIndex = -1;

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 18.sp : 10.sp;
      final radius = isTouched ? 60.r : 50.r;
      double total = (widget.analyticsData.totalCorrectAnswers!.toDouble() +
          widget.analyticsData.totalIncorrectAnswers!.toDouble());
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.green,
            value:
                (widget.analyticsData.totalCorrectAnswers!.toDouble() / total) *
                    100,
            title:
                '${((widget.analyticsData.totalCorrectAnswers!.toDouble() / total) * 100).toStringAsFixed(1)}%',
            radius: radius,
            titleStyle: TextStyles.labelLarge
                .copyWith(fontSize: fontSize, color: Colors.white),
          );
        case 1:
          return PieChartSectionData(
              color: AppColors.alizarin,
              value: (widget.analyticsData.totalIncorrectAnswers!.toDouble() /
                      total) *
                  100,
              title:
                  '${((widget.analyticsData.totalIncorrectAnswers!.toDouble() / total) * 100).toStringAsFixed(1)}%',
              radius: radius,
              titleStyle: TextStyles.labelLarge
                  .copyWith(fontSize: fontSize, color: Colors.white));
        default:
          throw Error();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // This will center the indicators
            children: [
              Indicator(
                color: AppColors.green,
                text: 'Jawaban Benar',
                isSquare: true,
                textStyle: TextStyles.labelSmall,
              ),
              SizedBox(width: 16.w),
              Indicator(
                color: AppColors.alizarin,
                text: 'Jawaban Salah',
                isSquare: true,
                textStyle: TextStyles.labelSmall,
              ),
            ],
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
                  sections: showingSections(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
