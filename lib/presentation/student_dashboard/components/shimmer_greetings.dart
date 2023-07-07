import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/images/image_circle.dart';
import 'package:sqlyze/presentation/shared/widgets/loaders/shimmer_circle.dart';
import 'package:sqlyze/presentation/shared/widgets/loaders/shimmer_primary.dart';

class ShimmerGreetings extends StatelessWidget {
  const ShimmerGreetings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ShimmerCircle(
                width: 40.w,
                height: 40.w,
              ),
              SizedBox(width: 19.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerPrimary(
                    child: Text(
                      'Good Morning,',
                      style: TextStyles.bodySmall.copyWith(
                          fontWeight: FontWeight.w400, color: AppColors.white),
                    ),
                  ),
                  ShimmerPrimary(
                    child: Text(
                      'Student',
                      style: TextStyles.bodySmall.copyWith(
                          fontWeight: FontWeight.w600, color: AppColors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ShimmerPrimary(
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
