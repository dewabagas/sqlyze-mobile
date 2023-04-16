import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/inputs/input_secondary.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class TabGuestLogin extends StatefulWidget {
  const TabGuestLogin({super.key});

  @override
  State<TabGuestLogin> createState() => _TabGuestLoginState();
}

class _TabGuestLoginState extends State<TabGuestLogin> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        hasBack: false,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 10.h),
                  InputSecondary(
                    label: 'Email',
                  ),
                  InputSecondary(
                    label: 'Password',
                  ),
                  SizedBox(height: 30.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.right,
                        style: TextStyles.labelMedium
                            .copyWith(color: AppColors.primary),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30.h),
                child: Column(
                  children: [
                    ButtonGradient(title: 'Login', onPressed: () {}),
                    SizedBox(height: 20.w),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.5.h,
                          color: AppColors.dividerColor,
                        )),
                        SizedBox(width: 7.w),
                        Text('OR',
                            style: TextStyles.bodySmall
                                .copyWith(color: AppColors.dividerColor)),
                        SizedBox(width: 7.w),
                        Expanded(
                            child: Divider(
                          thickness: 0.5.h,
                          color: AppColors.dividerColor,
                        )),
                      ],
                    ),
                    SizedBox(height: 20.w),
                    ButtonPrimary(
                      title: 'Register',
                      onPressed: () {},
                      color: AppColors.lightGrey3,
                      textStyle: TextStyles.labelLarge
                          .copyWith(color: AppColors.primary, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
