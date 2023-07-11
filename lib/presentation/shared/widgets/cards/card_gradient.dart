import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'dart:ui' as ui;

import 'package:sqlyze/presentation/shared/widgets/buttons/button_primary.dart';

class CardGradient extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Widget? prefixImage;
  final bool hasShadow;

  const CardGradient(
      {super.key,
      this.title,
      this.subtitle,
      this.prefixImage,
      this.hasShadow = true});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              gradient: const LinearGradient(
                  colors: [AppColors.secondary, AppColors.softBlue2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              boxShadow: [
                hasShadow
                    ? BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 4,
                        spreadRadius: 0,
                        color: const Color(0xFF3A3A3A).withOpacity(0.25))
                    : const BoxShadow(
                        blurRadius: 0,
                        color: Colors.transparent,
                        spreadRadius: 0)
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            top: 0,
            child: CustomPaint(
              size: Size(100.w, 150.h),
              painter: CustomCardShapePainter(
                  20.r, AppColors.secondary, AppColors.softBlue2),
            ),
          ),
          Positioned.fill(
            child: Row(
              children: [
                SizedBox(width: 12.5.w),
                SvgPicture.asset(AppIllustrations.illAssessment),
                SizedBox(width: 15.w),
                Expanded(
                  // flex: 4,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pengenalan DDL',
                          style: TextStyles.labelMedium
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'Pengenalan Data Definition Language',
                          style: TextStyles.bodyVerySmall
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(height: 10.h),
                        ButtonGradient(
                            height: 23.h,
                            title: 'Belajar Sekarang',
                            textStyle: TextStyles.labelLarge.copyWith(
                                color: AppColors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
