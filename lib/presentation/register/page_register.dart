import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/inputs/input_secondary.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  String? radioValue;

  @override
  void initState() {
    radioValue = 'Male';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'Register',
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.h),
                  InputSecondary(
                    label: 'Full Name',
                    hintText: 'Enter Your Name',
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (String? val) {},
                    onFocusChange: (hasFocus) {},
                    onClear: () {},
                  ),
                  InputSecondary(
                    label: 'Email',
                    hintText: 'Enter Your Email',
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (String? val) {},
                    onFocusChange: (hasFocus) {},
                    onClear: () {},
                  ),
                  InputSecondary(
                    label: 'Phone Number',
                    hintText: 'Enter Your Number',
                    keyboardType: TextInputType.phone,
                    onChanged: (String? val) {},
                    onFocusChange: (hasFocus) {},
                    isDense: true,
                    onClear: () {},
                    prefixIcon: Container(
                        margin: EdgeInsets.only(left: 14.w),
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.icIndonesia),
                            SizedBox(width: 6.w),
                            Text(
                              '+62',
                              style: TextStyles.labelLarge,
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.h, bottom: 12.h),
                    child: Text(
                      'Gender',
                      style: TextStyles.labelMedium
                          .copyWith(color: AppColors.charcoal),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Radio(
                            value: 'male',
                            groupValue: radioValue,
                            activeColor: AppColors.primary,
                            onChanged: (value) {
                              setState(() {
                                radioValue = value;
                              });
                            },
                          ),
                          Text('Male', style: TextStyles.labelLarge.copyWith(fontWeight: FontWeight.w400)),
                        ],
                      ),
                      SizedBox(width: 40.w),
                      Row(
                        children: <Widget>[
                          Radio(
                            value: 'female',
                            groupValue: radioValue,
                            activeColor: AppColors.primary,
                            onChanged: (value) {
                              setState(() {
                                radioValue = value;
                              });
                            },
                          ),
                          Text('Female', style: TextStyles.labelLarge.copyWith(fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(
                    bottom: 20.h, top: 18.h, left: 20.w, right: 20.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 8,
                        color: Colors.grey.shade200)
                  ],
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: ButtonGradient(
                  onPressed: () {},
                  title: 'Lanjut',
                ),
              ),
            )
          ],
        ));
  }
}
