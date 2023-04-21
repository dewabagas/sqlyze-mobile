import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class PageOtp extends StatefulWidget {
  const PageOtp({super.key});

  @override
  State<PageOtp> createState() => _PageOtpState();
}

class _PageOtpState extends State<PageOtp> {
  final List<TextEditingController> _controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void handleOtpSubmission() {
    bool isFilled =
        _controllers.every((controller) => controller.text.length == 1);

    if (isFilled) {
      String otp = _controllers.map((controller) => controller.text).join();
      AutoRouter.of(context).push(const RouteStudentDashboard());
    } else {
      print("Not all OTP fields are filled");
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60.h),
              Text(
                'Enter your verification code',
                style:
                    TextStyles.titleMedium.copyWith(color: AppColors.charcoal),
              ),
              SizedBox(height: 12.h),
              Text(
                'Your OTP has been sent to bagas.dewa@upi.edu',
                style: TextStyles.bodySmall.copyWith(
                    color: AppColors.paragraphColor,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _controllers.map((controller) {
                  return Container(
                    width: 46.w,
                    child: TextField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 24),
                      decoration: InputDecoration(
                        counterText: '',
                        contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: AppColors.charcoal, width: 0.5.w),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: AppColors.primary),
                        ),
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          FocusScope.of(context).nextFocus();
                          handleOtpSubmission();
                        }
                      },
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
