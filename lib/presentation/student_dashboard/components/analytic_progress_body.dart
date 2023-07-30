import 'package:flutter/material.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/locator.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/charts/analytic_line_chart.dart';

class AnalyticProgressBody extends StatefulWidget {
  final LearningAnalytic analyticsData;
  AnalyticProgressBody({super.key, required this.analyticsData});

  @override
  State<AnalyticProgressBody> createState() => _AnalyticProgressBodyState();
}

class _AnalyticProgressBodyState extends State<AnalyticProgressBody> {

  @override
  void initState() {
    final Mixpanel mixPanel = locator.get();
    mixPanel.track('Progress Analytics');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        children: [AnalyticLineChart(analyticsData: widget.analyticsData)],
      ),
    );
  }
}
