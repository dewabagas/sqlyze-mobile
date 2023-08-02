import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/locator.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/charts/analytic_pie_chart.dart';

class AnalyticPerformanceBody extends StatefulWidget {
  final LearningAnalytic analyticsData;
  const AnalyticPerformanceBody({super.key, required this.analyticsData});

  @override
  State<AnalyticPerformanceBody> createState() =>
      _AnalyticPerformanceBodyState();
}

class _AnalyticPerformanceBodyState extends State<AnalyticPerformanceBody> {
  @override
  void initState() {
    final Mixpanel mixPanel = locator.get();
    mixPanel.track('Performance Analytics');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        children: [
          AnalyticPieChart(analyticsData: widget.analyticsData),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              performanceDetail(Icons.bookmark_added_rounded, 'Jawaban\nBenar',
                  '${widget.analyticsData.totalCorrectAnswers}/${widget.analyticsData.totalQuestions}'),
              performanceDetail(Icons.bookmark_added_rounded, 'Jawaban\nSalah',
                  '${widget.analyticsData.totalIncorrectAnswers}/${widget.analyticsData.totalQuestions}'),
              performanceDetail(
                  Icons.sticky_note_2,
                  'Quiz Yang\nPernah Diambil',
                  '${widget.analyticsData.totalQuizzesTaken}/${widget.analyticsData.totalQuizzes}'),
            ],
          )
        ],
      ),
    );
  }

  Widget performanceDetail(IconData icon, String title, String subtitle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: AppColors.primary,
          size: 25.w,
        ),
        SizedBox(height: 4.h),
        Text(
          title, // New line added here
          style: TextStyles.bodyVerySmall,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 4.h),
        Text(subtitle, style: TextStyles.labelMedium)
      ],
    );
  }
}
