import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class CardLesson extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final String? image;
  final Function()? onTap;
  const CardLesson(
      {super.key, this.title, this.subtitle, this.image, required this.onTap});

  @override
  State<CardLesson> createState() => _CardLessonState();
}

class _CardLessonState extends State<CardLesson> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.h),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 4,
                  spreadRadius: 0,
                  color: const Color(0xFF3A3A3A).withOpacity(0.2))
            ]),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.lightGrey2,
                borderRadius: BorderRadius.circular(8.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
              child: SvgPicture.asset(
                AppIllustrations.illLearning1,
                height: 40.h,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title ?? 'Title', style: TextStyles.labelMedium),
                  SizedBox(height: 2.h),
                  Text(widget.subtitle ?? 'Subtitle',
                      style: TextStyles.bodyVerySmall),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
