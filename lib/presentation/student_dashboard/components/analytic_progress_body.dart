import 'package:flutter/material.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/presentation/shared/widgets/charts/analytic_line_chart.dart';

class AnalyticProgressBody extends StatefulWidget {
  final LearningAnalytic analyticsData;
  AnalyticProgressBody({super.key, required this.analyticsData});

  @override
  State<AnalyticProgressBody> createState() => _AnalyticProgressBodyState();
}

class _AnalyticProgressBodyState extends State<AnalyticProgressBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [AnalyticLineChart(analyticsData: widget.analyticsData)],
      ),
    );
  }
}
