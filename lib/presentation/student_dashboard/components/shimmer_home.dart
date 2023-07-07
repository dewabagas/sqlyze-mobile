import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/loaders/shimmer_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:sqlyze/presentation/student_dashboard/components/greetings_section.dart';
import 'package:sqlyze/presentation/student_dashboard/components/shimmer_greetings.dart';

class ShimmerHome extends StatelessWidget {
  const ShimmerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: [
            AppColors.primary,
            AppColors.primary.withOpacity(.9),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          Expanded(
              child: ListView(
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            children: [
              const ShimmerGreetings(),
              Stack(
                children: [
                  Container(
                    width: screenWidth,
                    height: screenHeight,
                    margin: EdgeInsets.only(top: 0.h),
                    padding: EdgeInsets.symmetric(horizontal: 0.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.r),
                          topRight: Radius.circular(25.r),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20.h),
                        ShimmerPrimary(
                          height: 80.h,
                          width: 328.w,
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ShimmerPrimary(
                                    child: Text('Materi',
                                        style: TextStyles.titleSmall.copyWith(
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.charcoal)),
                                  ),
                                  ShimmerPrimary(
                                    child: Text('Lihat Semua',
                                        style: TextStyles.bodyVerySmall
                                            .copyWith(
                                                color: AppColors.primary,
                                                fontWeight: FontWeight.w600)),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Expanded(child: ShimmerPrimary(height: 80.h)),
                                  SizedBox(width: 10.w),
                                  Expanded(child: ShimmerPrimary(height: 80.h)),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
