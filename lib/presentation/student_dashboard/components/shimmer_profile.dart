import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/lessons/lesson_detail/components/lesson_header.dart';
import 'package:sqlyze/presentation/shared/widgets/images/image_circle.dart';
import 'package:sqlyze/presentation/shared/widgets/loaders/shimmer_circle.dart';
import 'package:sqlyze/presentation/shared/widgets/loaders/shimmer_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/draggable_page.dart';
import 'package:sqlyze/presentation/student_dashboard/components/card_profile_item.dart';

class ShimmerProfile extends StatelessWidget {
  const ShimmerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggablePage(
        title: ShimmerPrimary(
          child: Text('Title',
              style: TextStyles.headlineSmall.copyWith(fontSize: 14.sp)),
        ),
        headerExpandedHeight: 0.25,
        backgroundColor: AppColors.white,
        appBarColor: AppColors.white,
        headerWidget: ShimmerPrimary(
          child: buildProfileHeader(),
        ),
        body: [buildProfileBody()]);
  }

  Widget buildProfileHeader() {
    return Container(
      color: AppColors.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 43.h),
          Center(
            child: ShimmerCircle(
              width: 70.w,
              height: 70.w,
            ),
          ),
          SizedBox(height: 5.h),
          Text('Student',
              style:
                  TextStyles.titleSmall.copyWith(color: AppColors.brokenWhite)),
          SizedBox(height: 5.h),
          Text('+62845345345',
              style: TextStyles.bodyVerySmall.copyWith(
                  color: AppColors.brokenWhite, fontWeight: FontWeight.w300)),
          SizedBox(height: 5.h),
          Text('student@upi.edi',
              style: TextStyles.bodyVerySmall.copyWith(
                  color: AppColors.brokenWhite, fontWeight: FontWeight.w300))
        ],
      ),
    );
  }

  Widget buildProfileBody() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, bottom: 10.h, top: 5.h),
            child: ShimmerPrimary(
              child: Text(
                'Account',
                style:
                    TextStyles.labelMedium.copyWith(color: AppColors.primary),
              ),
            ),
          ),
          ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ShimmerPrimary(
                    child: Container(
                  margin: EdgeInsets.only(top: 10.h),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ShimmerCircle(
                                  height: 30.w,
                                  width: 30.w,
                                ),
                                SizedBox(width: 20.w),
                                Text(
                                  'Title',
                                  style: TextStyles.bodyVerySmall
                                      .copyWith(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SvgPicture.asset(AppIcons.icChevronRight)
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      const Divider(
                        color: AppColors.dividerColor,
                        thickness: 0.5,
                      )
                    ],
                  ),
                ));
              })
        ],
      ),
    );
  }
}
