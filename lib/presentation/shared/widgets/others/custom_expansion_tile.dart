import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class CustomExpansionTile extends StatelessWidget {
  final List<Widget> children;
  final String title;
  const CustomExpansionTile(
      {super.key, required this.children, required this.title});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ListTileTheme(
        contentPadding: EdgeInsets.zero,
        child: ExpansionTile(
          initiallyExpanded: true,
          title: Text(title, style: TextStyles.labelMedium),
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
