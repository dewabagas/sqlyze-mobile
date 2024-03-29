import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class CardExpansion extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final bool hasShadow;
  final Color backgroundColor;
  final Function(bool)? onExpansionChanged;

  const CardExpansion(
      {super.key,
      required this.title,
      required this.children,
      this.hasShadow = true,
      this.backgroundColor = AppColors.white,
      this.onExpansionChanged});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            hasShadow
                ? BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF3A3A3A).withOpacity(0.25))
                : const BoxShadow(
                    blurRadius: 0, color: Colors.transparent, spreadRadius: 0)
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
          onExpansionChanged: onExpansionChanged,
          children: children,
        ),
      ),
    );
  }
}
