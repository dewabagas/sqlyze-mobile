import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/images/card_photo.dart';

class CardTips extends StatefulWidget {
  final String? imageUrl;
  final String? title;
  final int? likeCount;
  final String? timeDesc;

  const CardTips(
      {super.key, this.imageUrl, this.title, this.likeCount, this.timeDesc});

  @override
  State<CardTips> createState() => _CardTipsState();
}

class _CardTipsState extends State<CardTips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      margin: EdgeInsets.only(bottom: 15.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkGrey.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          CardPhoto(
            photoUrl: widget.imageUrl,
            imageWidth: 93.w,
            imageHeight: 93.w,
          ),
          SizedBox(width: 15.w),
          SizedBox(
            width: 236.w,
            child: Column(
              children: [
                Text('${widget.title}',
                    style: TextStyles.headlineSmall
                        .copyWith(color: AppColors.charcoal, fontSize: 16.sp)),
                SizedBox(height: 10.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 11.w,
                          color: AppColors.red2,
                        ),
                        SizedBox(width: 5.81.w),
                        Text('${widget.likeCount} Likes',
                            style: TextStyles.bodyVerySmall)
                      ],
                    ),
                    Text('${widget.timeDesc}', style: TextStyles.bodyVerySmall)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
