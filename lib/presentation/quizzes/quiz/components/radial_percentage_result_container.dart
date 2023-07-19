import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sqlyze/domain/core/utils/normalize_number.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class RadialPercentageResultContainer extends StatefulWidget {
  final Size size;
  final double percentage;
  final double circleStrokeWidth;
  final double arcStrokeWidth;
  final Color? circleColor;
  final Color? arcColor;
  final double? textFontSize;
  final int? timeTakenToCompleteQuizInSeconds;
  final double radiusPercentage;

  const RadialPercentageResultContainer({
    Key? key,
    required this.percentage,
    required this.size,
    this.textFontSize,
    required this.circleStrokeWidth,
    required this.arcStrokeWidth,
    required this.radiusPercentage,
    this.timeTakenToCompleteQuizInSeconds,
    this.arcColor,
    this.circleColor,
  }) : super(key: key);

  @override
  _RadialPercentageResultContainerState createState() =>
      _RadialPercentageResultContainerState();
}

class _RadialPercentageResultContainerState
    extends State<RadialPercentageResultContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<double>(
            begin: 0.0,
            end: NormalizeNumber.inRange(
                currentValue: widget.percentage,
                minValue: 0.0,
                maxValue: 100.0,
                newMaxValue: 360.0,
                newMinValue: 0.0))
        .animate(CurvedAnimation(
            parent: animationController, curve: Curves.easeInOut));
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  String _getTimeInMinutesAndSeconds() {
    int totalTime = widget.timeTakenToCompleteQuizInSeconds ?? 0;
    if (totalTime == 0) {
      return '00:00';
    }
    int seconds = totalTime % 60;
    int minutes = totalTime ~/ 60;
    print('----------------------------');
    print('Time taken to complete ${widget.timeTakenToCompleteQuizInSeconds}');
    return '${minutes < 10 ? 0 : ''}$minutes:${seconds < 10 ? 0 : ''}$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: widget.size.height,
          width: widget.size.width,
          child: CustomPaint(
            painter: CircleCustomPainter(
              color: widget.circleColor ?? Theme.of(context).backgroundColor,
              radiusPercentage: widget.radiusPercentage,
              strokeWidth: widget.circleStrokeWidth,
            ),
          ),
        ),
        SizedBox(
          height: widget.size.height,
          width: widget.size.width,
          child: AnimatedBuilder(
              builder: (context, _) {
                return CustomPaint(
                  willChange: false,
                  painter: ArcCustomPainter(
                      sweepAngle: animation.value,
                      color: AppColors.softGreen,
                      radiusPercentage: widget.radiusPercentage,
                      strokeWidth: widget.arcStrokeWidth),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.translate(
                        offset: Offset(0, 2.5),
                        child: Text(
                          '${widget.percentage.toStringAsFixed(0)}%',
                          style: TextStyles.bodySmall.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      _getTimeInMinutesAndSeconds().isNotEmpty
                          ? Text(_getTimeInMinutesAndSeconds(),
                              style: TextStyles.bodyVerySmall
                                  .copyWith(color: AppColors.white))
                          : Container(),
                    ],
                  ),
                );
              },
              animation: animationController),
        )
      ],
    );
  }
}

class CircleCustomPainter extends CustomPainter {
  final Color? color;
  final double? strokeWidth;
  final double? radiusPercentage;
  CircleCustomPainter({this.color, this.radiusPercentage, this.strokeWidth});
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width * (0.5), size.height * (0.5));
    Paint paint = Paint()
      ..strokeWidth = strokeWidth!
      ..color = color!
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, size.width * radiusPercentage!, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    //generally it return false but when parent widget is changing
    //or animating it should return true
    return false;
  }
}

class ArcCustomPainter extends CustomPainter {
  final double sweepAngle;
  final Color color;
  final double radiusPercentage;
  final double strokeWidth;

  ArcCustomPainter(
      {required this.sweepAngle,
      required this.color,
      required this.radiusPercentage,
      required this.strokeWidth});

  double _degreeToRadian() {
    return (sweepAngle * pi) / 180.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = strokeWidth
      ..color = color
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width * (0.5), size.height * (0.5)),
            radius: size.width * radiusPercentage),
        3 * (pi / 2),
        _degreeToRadian(),
        false,
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
