import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class InputBig extends StatefulWidget {
  final String label;
  final String? initialValue;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final Function(bool)? onFocusChange;
  final Function()? onClear;
  final bool? isDense;
  final bool isValidated;
  final bool isFocused;
  final bool isEnabled;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? labelPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextStyle? textStyles;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final TextCapitalization textCapitalization;
  const InputBig(
      {Key? key,
      this.validator,
      this.label = '',
      this.initialValue,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType,
      this.inputFormatters,
      this.isDense,
      this.contentPadding,
      this.labelPadding,
      this.onSaved,
      this.onChanged,
      this.focusNode,
      this.onFocusChange,
      this.isFocused = false,
      this.isValidated = false,
      this.isEnabled = true,
      this.onClear,
      this.textStyles,
      this.controller,
      this.maxLength,
      this.minLines,
      this.maxLines,
      this.textCapitalization = TextCapitalization.none})
      : super(key: key);

  @override
  State<InputBig> createState() => _InputBigState();
}

class _InputBigState extends State<InputBig> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              widget.labelPadding ?? EdgeInsets.only(top: 20.h, bottom: 8.h),
          child: Text(
            widget.label,
            style: TextStyles.labelMedium,
          ),
        ),
        Focus(
          onFocusChange: widget.onFocusChange,
          child: TextFormField(
            textCapitalization: widget.textCapitalization,
            maxLength: widget.maxLength,
            controller: widget.controller,
            initialValue: widget.initialValue,
            textAlign: TextAlign.left,
            enabled: widget.isEnabled,
            focusNode: widget.focusNode,
            autocorrect: false,
            decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyles.labelMedium.copyWith(
                    fontWeight: FontWeight.w400, color: AppColors.grey),
                fillColor: AppColors.lightGrey4,
                filled: true,
                counter: const SizedBox.shrink(),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.lightGrey4, width: 1.0),
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
                      const BorderSide(color: AppColors.lightGrey4, width: 1.0),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                contentPadding: widget.contentPadding ??
                    EdgeInsets.symmetric(
                        vertical: screenHeight * 0.021875,
                        horizontal: screenWidth * 0.038889),
                isDense: widget.isDense,
                prefixIcon: widget.prefixIcon,
                suffixIcon: suffixIcons()),
            style: widget.textStyles ??
                TextStyles.labelLarge.copyWith(
                    color: widget.isEnabled
                        ? AppColors.charcoal
                        : AppColors.lightGrey,
                    fontWeight: FontWeight.w400),
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatters,
            validator: widget.validator,
            onSaved: widget.onSaved,
            onChanged: widget.onChanged,
            maxLines: null, // This will allow for multiline input.
          ),
        ),
      ],
    );
  }

  Widget suffixIcons() {
    if (widget.isFocused) {
      return Visibility(
        visible: widget.controller?.text.isNotEmpty == true,
        child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.038889,
            ),
            child: InkWell(
              onTap: widget.onClear,
              child: SvgPicture.asset(
                AppIcons.icCrossGrey,
                width: screenWidth * 0.044444,
              ),
            )),
      );
    } else if (widget.isValidated) {
      return Container(
          margin: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.038889,
          ),
          child: SvgPicture.asset(
            AppIcons.icChecklist,
            width: screenWidth * 0.044444,
          ));
    } else {
      return const SizedBox.shrink();
    }
  }
}
