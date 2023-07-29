import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/domain/core/models/chart_data.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class AnalyticLineChart extends StatefulWidget {
  final LearningAnalytic analyticsData;
  const AnalyticLineChart({super.key, required this.analyticsData});

  @override
  State<AnalyticLineChart> createState() => _AnalyticLineChartState();
}

class _AnalyticLineChartState extends State<AnalyticLineChart> {
  List<Color> gradientColors = [AppColors.primary, AppColors.secondary];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Padding(
            padding: EdgeInsets.only(
                right: 18.w, left: 10.w, top: 18.h, bottom: 8.h),
            child: LineChart(mainData()),
          ),
        ),
        SizedBox(
          width: 60,
          height: 34,
          child: TextButton(
            onPressed: () {
              setState(() {
                showAvg = !showAvg;
              });
            },
            child: Text(
              'avg',
              style: TextStyle(
                fontSize: 12,
                color: showAvg ? Colors.white.withOpacity(0.5) : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<ChartData> mapAnalyticsToChartData() {
    return widget.analyticsData.answersPerQuizAttempt!.map((answerAnalytic) {
      return ChartData(
        x: double.parse(answerAnalytic.quizId.toString()),
        y: double.parse(answerAnalytic.correctAnswersPercentage!.toString()),
      );
    }).toList();
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    TextStyle style = TextStyles.bodyVerySmall.copyWith(fontSize: 8.sp);
    Widget text;

    if (value.toInt() == 0) {
      text = Text('0', style: style);
    } else if (value.toInt() - 1 <
        widget.analyticsData.answersPerQuizAttempt!.length) {
      var quizId =
          widget.analyticsData.answersPerQuizAttempt![value.toInt() - 1].quizId;
      text = Text('$quizId', style: style);
    } else {
      text = Text('', style: style);
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    TextStyle style = TextStyles.bodyVerySmall.copyWith(fontSize: 6.sp);
    String text;
    switch (value.toInt()) {
      case 10:
        text = 'Rendah';
        break;
      case 40:
        text = 'Sedang';
        break;
      case 90:
        text = 'Tinggi';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: AppColors.charcoal,
            strokeWidth: 0.1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: AppColors.charcoal,
            strokeWidth: 0.1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: widget.analyticsData.answersPerQuizAttempt!.length.toDouble() + 1,
      minY: 0,
      maxY: 100,
      lineBarsData: [
        LineChartBarData(
          spots: mapAnalyticsToChartData().map((data) {
            return FlSpot(data.x, data.y);
          }).toList(),
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
