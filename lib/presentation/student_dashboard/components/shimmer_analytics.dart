import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/loaders/shimmer_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:sqlyze/presentation/student_dashboard/components/tab_analytics.dart';

class ShimmerAnalytics extends StatelessWidget {
  const ShimmerAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      appBarTitle: 'Analisis Belajar',
      hasBack: false,
      child: Column(
        children: [
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ShimmerPrimary(
              child: TabHeaderAnalytics(
                selectedIndex: 0,
                onValueChanged: (i) {},
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ShimmerPrimary(height: 200.h),
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ShimmerPrimary(
                child: performanceDetail(
                    Icons.bookmark_added_rounded, 'Jawaban\nBenar', '0/0'),
              ),
              ShimmerPrimary(
                child: performanceDetail(
                    Icons.bookmark_added_rounded, 'Jawaban\nSalah', '0/0'),
              ),
              ShimmerPrimary(
                child: performanceDetail(
                    Icons.sticky_note_2, 'Quiz Yang\nPernah Diambil', '0/0'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget performanceDetail(IconData icon, String title, String subtitle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: AppColors.primary,
          size: 25.w,
        ),
        SizedBox(height: 4.h),
        Text(
          title, // New line added here
          style: TextStyles.bodyVerySmall,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 4.h),
        Text(subtitle, style: TextStyles.labelMedium)
      ],
    );
  }
}
