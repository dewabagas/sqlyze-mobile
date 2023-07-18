import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class ButtonSelection extends StatefulWidget {
  final VoidCallback? onTap;
  final Function(String?)? onSaved;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String labelText;
  final String title;
  final bool isValidated;
  final bool isEnabled;
  final Widget? suffixIcon;
  const ButtonSelection(
      {this.onTap,
      this.onSaved,
      this.controller,
      this.validator,
      this.labelText = "Select",
      this.title = "Title",
      this.isValidated = false,
      this.isEnabled = true,
      this.suffixIcon,
      Key? key})
      : super(key: key);

  @override
  State<ButtonSelection> createState() => _ButtonSelectionState();
}

class _ButtonSelectionState extends State<ButtonSelection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h, bottom: 8.h),
          child: Text(widget.title, style: TextStyles.labelMedium),
        ),
        GestureDetector(
          onTap: widget.isEnabled ? widget.onTap : () {},
          child: AbsorbPointer(
            child: TextFormField(
              style: TextStyles.labelMedium,
              keyboardType: TextInputType.text,
              controller: widget.controller,
              validator: widget.validator,
              onSaved: widget.onSaved,
              enabled: widget.isEnabled,
              decoration: InputDecoration(
                hintText: widget.labelText,
                hintStyle: TextStyles.labelMedium.copyWith(
                    fontWeight: FontWeight.w400, color: AppColors.grey),
                fillColor: widget.isEnabled
                    ? AppColors.lightGrey4
                    : AppColors.grey2.withOpacity(0.5),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabled: widget.isEnabled,
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.061111),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      widget.isValidated
                          ? Padding(
                              padding: EdgeInsets.only(
                                  right: screenWidth * 0.040528),
                              child: SvgPicture.asset(
                                AppIcons.icChecklist,
                                width: screenWidth * 0.044444,
                              ),
                            )
                          : const SizedBox.shrink(),
                      widget.suffixIcon ??
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.primary,
                            size: 16.0,
                          )
                    ],
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: widget.isEnabled
                          ? AppColors.lightGrey4
                          : AppColors.grey2.withOpacity(0.5),
                      width: 1.0),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.primary, width: 1.0),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.red, width: 1.0),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.red, width: 1.0),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.lightGrey3, width: 1.0),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
