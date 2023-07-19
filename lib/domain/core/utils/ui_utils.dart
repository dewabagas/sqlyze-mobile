import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class UiUtils {
  static BoxShadow buildBoxShadow(
      {Offset? offset, double? blurRadius, Color? color}) {
    return BoxShadow(
        offset: offset ?? const Offset(0, 0),
        blurRadius: blurRadius ?? 4,
        spreadRadius: 0,
        color: color ?? AppColors.shadowColor.withOpacity(0.25));
  }
}
