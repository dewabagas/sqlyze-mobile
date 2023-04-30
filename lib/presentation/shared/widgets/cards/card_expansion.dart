import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class CardExpansion extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const CardExpansion({super.key, required this.title, required this.children});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 4,
                spreadRadius: 0,
                color: const Color(0xFF3A3A3A).withOpacity(0.25))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: ExpansionTile(
          title: Text(
            title,
            style: TextStyles.labelMedium,
          ),
          childrenPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          collapsedIconColor: AppColors.charcoal,
          iconColor: AppColors.primary,
          children: children,
        ),
      ),
    );
  }
}
