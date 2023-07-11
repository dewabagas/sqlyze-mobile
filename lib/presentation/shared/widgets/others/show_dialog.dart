import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/strings.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_primary.dart';

Future<void> showErrorDialog(
    {required BuildContext context,
    String? message,
    String? buttonText}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ListBody(
              children: <Widget>[
                SvgPicture.asset(AppIllustrations.illSad,
                    width: 120.w, height: 120.h),
                SizedBox(height: 24.h),
                Text(
                  message ?? AppStrings.errorMessageGeneral,
                  textAlign: TextAlign.center,
                  style: TextStyles.bodySmall,
                )
              ],
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: ButtonPrimary(
              title: buttonText ?? 'I Understand',
              onPressed: () => Navigator.of(context).pop(),
            ),
          )
        ],
      );
    },
  );
}

Future<void> showPositiveDialog(
    {required BuildContext context,
    String? title,
    String? message,
    String? buttonText,
    Widget? image,
    Function()? onTap}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ListBody(
              children: <Widget>[
                SizedBox(height: 10.h),
                Text(
                  title ?? 'Title',
                  style: TextStyles.bodyLarge
                      .copyWith(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15.h),
                image ??
                    SvgPicture.asset(AppIllustrations.illSmile,
                        width: 120.w, height: 120.h),
                SizedBox(height: 24.h),
                Text(
                  message ?? AppStrings.errorMessageGeneral,
                  textAlign: TextAlign.center,
                  style: TextStyles.bodySmall,
                )
              ],
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: ButtonGradient(
              title: buttonText ?? 'Okay',
              onPressed: onTap ?? () => Navigator.of(context).pop(),
            ),
          )
        ],
      );
    },
  );
}
