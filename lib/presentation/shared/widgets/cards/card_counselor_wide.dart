import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/images/card_photo.dart';

class CardCounselorWide extends StatefulWidget {
  final String? imageUrl;
  final String? title;
  final String? subtitle;
  final String? experience;
  final String? location;
  final double? rating;
  final Function()? onPressed;

  const CardCounselorWide(
      {super.key,
      this.imageUrl,
      this.title,
      this.subtitle,
      this.experience,
      this.location,
      this.rating,
      this.onPressed});

  @override
  State<CardCounselorWide> createState() => _CardCounselorWideState();
}

class _CardCounselorWideState extends State<CardCounselorWide> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        margin: EdgeInsets.only(bottom: 15.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkGrey.withOpacity(0.20),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CardPhoto(
                  photoUrl: widget.imageUrl,
                  imageWidth: 79.w,
                  imageHeight: 79.w,
                ),
                SizedBox(width: 20.w),
                SizedBox(
                  width: 200.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${widget.title}',
                          style: TextStyles.headlineSmall.copyWith(
                              color: AppColors.darkGrey2, fontSize: 18.sp)),
                      SizedBox(height: 5.h),
                      Text('${widget.subtitle}',
                          textAlign: TextAlign.center,
                          style: TextStyles.headlineSmall.copyWith(
                              fontSize: 10.sp, color: AppColors.grey)),
                      SizedBox(height: 10.w),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
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
                                      style: TextStyles.headlineSmall.copyWith(
                                          fontSize: 10.sp,
                                          color: AppColors.grey)),
                                ],
                              ),
                              SizedBox(width: 6.w),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    AppIcons.icMapMarker,
                                    height: 9.h,
                                    width: 7.w,
                                  ),
                                  SizedBox(width: 3.w),
                                  Text('${widget.location}',
                                      textAlign: TextAlign.center,
                                      style: TextStyles.headlineSmall.copyWith(
                                          fontSize: 10.sp,
                                          color: AppColors.grey)),
                                ],
                              ),
                            ],
                          ),
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
                                  style: TextStyles.headlineSmall.copyWith(
                                      fontSize: 10.sp, color: AppColors.grey)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              AppIcons.icChevronRight,
              height: 9.38.h,
              width: 4.69.w,
            )
          ],
        ),
      ),
    );
  }
}
