import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/others/custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

class TabHeaderAnalytics extends StatelessWidget {
  final int selectedIndex;
  final Function? onTap;
  final void Function(int)? onValueChanged;

  const TabHeaderAnalytics({
    required this.selectedIndex,
    this.onTap,
    this.onValueChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSlidingSegmentedControl<int>(
      initialValue: selectedIndex,
      isStretch: true,
      height: 25.h,
      padding: 0,
      innerPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(30.r),
      ),
      thumbDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: AppColors.brokenWhite),
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInToLinear,
      children: {
        0: Text(
          'Perkembangan',
          style: TextStyles.bodySmall.copyWith(
              fontWeight:
                  selectedIndex == 0 ? FontWeight.w600 : FontWeight.w400),
        ),
        1: Text(
          'Performa',
          style: TextStyles.bodySmall.copyWith(
              fontWeight:
                  selectedIndex == 1 ? FontWeight.w600 : FontWeight.w400),
        ),
      },
      onValueChanged: onValueChanged!,
    );
  }
}
