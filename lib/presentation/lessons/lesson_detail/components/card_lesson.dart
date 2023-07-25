import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/others/show_dialog.dart';

class CardLesson extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final String? image;
  final Function()? onTap;
  final bool? isUnlocked;
  const CardLesson(
      {super.key,
      this.title,
      this.subtitle,
      this.image,
      required this.onTap,
      this.isUnlocked});

  @override
  State<CardLesson> createState() => _CardLessonState();
}

class _CardLessonState extends State<CardLesson> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isUnlocked == false
          ? () {
              showErrorDialog(
                  context: context,
                  message:
                      'Anda harus menyelesaikan pembelajaran sebelumnya dulu');
            }
          : widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.h),
        decoration: BoxDecoration(
            color:
                widget.isUnlocked == false ? AppColors.dividerColor : Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: [
              widget.isUnlocked == true
                  ? BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 4,
                      spreadRadius: 0,
                      color: const Color(0xFF3A3A3A).withOpacity(0.2))
                  : const BoxShadow(
                      blurRadius: 0, color: Colors.transparent, spreadRadius: 0)
            ]),
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey2,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
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
                      Text(widget.title ?? 'Title',
                          style: TextStyles.labelMedium),
                      SizedBox(height: 2.h),
                      Text(widget.subtitle ?? 'Subtitle',
                          style: TextStyles.bodyVerySmall),
                    ],
                  ),
                )
              ],
            ),
            if (widget.isUnlocked == false)
              Positioned(
                right: 0,
                top: 0,
                child: Icon(Icons.lock,
                    color: AppColors.red,
                    size: 15.w), // Modify the color as per your theme
              ),
          ],
        ),
      ),
    );
  }
}
