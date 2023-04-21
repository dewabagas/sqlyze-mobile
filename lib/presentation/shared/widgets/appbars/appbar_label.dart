import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

AppBar appbarLabel(
    {Function? onBackPressed,
    String? title,
    List<Widget>? actions,
    bool hasBack = true}) {
  return AppBar(
    leading: hasBack
        ? IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: onBackPressed as void Function()?)
        : const SizedBox.shrink(),
    title: Text(
      title ?? '',
      style: TextStyles.labelLarge.copyWith(color: AppColors.white),
    ),
    centerTitle: true,
    backgroundColor: AppColors.primary,
    actions: actions,
    elevation: 0,
  );
}

AppBar appbarLogo(
    {Function? onBackPressed, List<Widget>? actions, bool hasBack = true}) {
  return AppBar(
    leading: hasBack
        ? IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: onBackPressed as void Function()?)
        : const SizedBox.shrink(),
    title: Image.asset(
      AppLogo.sqlyze,
      width: 30.w,
      height: 30.w,
    ),
    centerTitle: true,
    backgroundColor: AppColors.primary,
    actions: actions,
    elevation: 0,
  );
}
