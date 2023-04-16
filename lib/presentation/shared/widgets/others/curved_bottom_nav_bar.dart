import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class CurvedBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int> onTabSelected;

  CurvedBottomNavigationBar({
    required this.selectedIndex,
    required this.items,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 15,
            spreadRadius: 0,
            color: const Color(0xFF3A3A3A).withOpacity(0.1))
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.r),
          topLeft: Radius.circular(30.r),
        ),
        child: BottomNavigationBar(
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.darkGrey2,
          backgroundColor: Colors.white,
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          onTap: onTabSelected,
          items: items,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle:
              TextStyles.headlineSmall.copyWith(fontSize: 10.sp),
          unselectedLabelStyle:
              TextStyles.headlineSmall.copyWith(fontSize: 10.sp),
        ),
      ),
    );
  }
}
