import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/lessons/lesson_detail/components/lesson_header.dart';
import 'package:sqlyze/presentation/shared/widgets/loaders/shimmer_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/draggable_page.dart';

class ShimmerLessonDetail extends StatelessWidget {
  const ShimmerLessonDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggablePage(
        title: ShimmerPrimary(
          child: Text('Title',
              style: TextStyles.headlineSmall.copyWith(fontSize: 14.sp)),
        ),
        headerExpandedHeight: 0.28,
        backgroundColor: AppColors.white,
        appBarColor: AppColors.white,
        headerWidget: ShimmerPrimary(
          child: LessonHeader(
            lessonAmount: 0,
            lessonName: 'Title',
          ),
        ),
        body: [buildLessonBody()]);
  }

  Widget buildLessonBody() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerPrimary(
            child: Text(
              'Materi',
              style: TextStyles.labelLarge,
            ),
          ),
          SizedBox(height: 20.h),
          ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: ShimmerPrimary(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.lightGrey2,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.w),
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
                                Text('Title', style: TextStyles.labelMedium),
                                SizedBox(height: 2.h),
                                Text('Subtitle',
                                    style: TextStyles.bodyVerySmall),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
