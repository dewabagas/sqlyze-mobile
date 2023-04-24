import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/others/custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

class TabPlaygroundQuery extends StatelessWidget {
  final int selectedIndex;
  final Function? onTap;
  final void Function(int)? onValueChanged;

  const TabPlaygroundQuery({
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
      height: 20.h,
      padding: 0,
      innerPadding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
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
          'Tables',
          style: TextStyles.bodyVerySmall.copyWith(
              fontWeight:
                  selectedIndex == 0 ? FontWeight.w600 : FontWeight.w400),
        ),
        1: Text(
          'Result',
          style: TextStyles.bodyVerySmall.copyWith(
              fontWeight:
                  selectedIndex == 1 ? FontWeight.w600 : FontWeight.w400),
        ),
      },
      onValueChanged: onValueChanged!,
    );
  }
}
