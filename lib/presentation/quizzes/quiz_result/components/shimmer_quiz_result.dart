import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/loaders/shimmer_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class ShimmerQuizResult extends StatefulWidget {
  const ShimmerQuizResult({super.key});

  @override
  State<ShimmerQuizResult> createState() => _ShimmerQuizResultState();
}

class _ShimmerQuizResultState extends State<ShimmerQuizResult> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        child: Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.h),
            ShimmerPrimary(
              height: screenHeight * (0.575),
              width: screenWidth * (0.85),
              borderRadius: BorderRadius.circular(20.r),
            ),
            SizedBox(height: 30.0.h),
            ShimmerPrimary(
              child: ButtonGradient(onPressed: () {}, title: ''),
            ),
            SizedBox(height: 15),
            ShimmerPrimary(
              child: ButtonPrimary(onPressed: () {}, title: ''),
            ),
          ],
        ),
      ),
    ));
  }
}
