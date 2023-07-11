import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/components/tab_chapter_detail.dart';
import 'package:sqlyze/presentation/shared/widgets/cards/card_expansion.dart';
import 'package:sqlyze/presentation/shared/widgets/cards/card_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/loaders/shimmer_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class ShimmerChapterDetail extends StatelessWidget {
  const ShimmerChapterDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'Detail Materi',
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                ShimmerPrimary(
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.h),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: SizedBox(width: screenWidth, height: 150.h))),
                ),
                SizedBox(height: 15.h),
                ShimmerPrimary(
                  child: TabChapterDetail(
                    selectedIndex: 0,
                    onValueChanged: (i) {},
                  ),
                ),
                SizedBox(height: 10.h),
                ShimmerPrimary(
                  child: Text('Title', style: TextStyles.labelMedium),
                ),
                SizedBox(height: 5.h),
                ShimmerPrimary(
                  child: Text(
                    'Description',
                    style: TextStyles.bodySmall.copyWith(
                        color: AppColors.paragraphColor,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 10.h),
                ShimmerPrimary(child: CardGradient(hasShadow: false)),
                SizedBox(height: 16.h),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: ShimmerPrimary(
                          child: const CardExpansion(
                            hasShadow: false,
                            title: 'Title',
                            children: [],
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ));
  }
}
