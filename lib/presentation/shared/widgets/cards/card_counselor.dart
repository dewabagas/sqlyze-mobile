import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/images/image_circle.dart';

class CardCounselor extends StatefulWidget {
  final String? imageUrl;
  final String? title;
  final String? subtitle;
  final String? experience;
  final double? rating;
  final Function()? onPressed;
  const CardCounselor(
      {super.key,
      this.imageUrl,
      this.title,
      this.subtitle,
      this.experience,
      this.rating,
      this.onPressed});

  @override
  State<CardCounselor> createState() => _CardCounselorState();
}

class _CardCounselorState extends State<CardCounselor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
      margin: EdgeInsets.only(bottom: 14.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 4,
                spreadRadius: 0,
                color: const Color(0xFF3A3A3A).withOpacity(0.25))
          ]),
      child: Column(
        children: [
          ImageCircle(
            height: 51.w,
            width: 51.w,
            image: widget.imageUrl,
          ),
          SizedBox(height: 5.h),
          Text('${widget.title}',
              textAlign: TextAlign.center,
              style: TextStyles.headlineSmall
                  .copyWith(fontSize: 14.sp, color: AppColors.darkGrey2)),
          SizedBox(height: 5.h),
          Text('${widget.subtitle}',
              textAlign: TextAlign.center,
              style: TextStyles.headlineSmall
                  .copyWith(fontSize: 10.sp, color: AppColors.grey)),
          SizedBox(height: 5.h),
          const Divider(color: AppColors.brokenWhite, thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.icCase,
                    height: 7.h,
                    width: 7.h,
                  ),
                  SizedBox(width: 3.w),
                  Text('${widget.experience}',
                      textAlign: TextAlign.center,
                      style: TextStyles.headlineSmall
                          .copyWith(fontSize: 10.sp, color: AppColors.grey)),
                ],
              ),
              SizedBox(width: 6.w),
              Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.icStar,
                    height: 10.h,
                    width: 10.w,
                  ),
                  SizedBox(width: 3.w),
                  Text('${widget.rating}',
                      textAlign: TextAlign.center,
                      style: TextStyles.headlineSmall
                          .copyWith(fontSize: 10.sp, color: AppColors.grey)),
                ],
              )
            ],
          ),
          SizedBox(height: 10.h),
          Expanded(
              child: ButtonPrimary(
                  title: 'Pilih Psikolog', onPressed: widget.onPressed)),
        ],
      ),
    );
  }
}
