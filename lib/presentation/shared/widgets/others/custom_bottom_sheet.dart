import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class CustomBottomSheet {
  static showAutoHeightBottomSheet(
      {required BuildContext context, Widget? child}) async {
    showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        context: context,
        builder: (BuildContext buildContext) {
          return SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.r),
                  topLeft: Radius.circular(50.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                          margin: EdgeInsets.only(
                            top: 16.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.lightGrey2,
                            boxShadow: const [
                              BoxShadow(
                                  color: AppColors.lightGrey2, spreadRadius: 3),
                            ],
                          ),
                          alignment: Alignment.center,
                          width: 100.w,
                          height: 1.5.h),
                    ),
                    child ?? const SizedBox.shrink()
                  ],
                ),
              ),
            ),
          );
        });
  }
}
