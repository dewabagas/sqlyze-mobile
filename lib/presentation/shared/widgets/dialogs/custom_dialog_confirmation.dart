import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_primary.dart';

class CustomDialogConfirmation extends StatelessWidget {
  const CustomDialogConfirmation(
      {Key? key,
      this.title,
      this.message,
      this.positiveText,
      this.negativeText,
      this.actionNegative,
      this.actionPositiveButton})
      : super(key: key);

  final String? title, message, positiveText, negativeText;
  final Function? actionPositiveButton, actionNegative;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title!, style: TextStyles.labelMedium),
            SizedBox(
              height: 20.h,
            ),
            Text(
              message!,
              textAlign: TextAlign.center,
              style: TextStyles.bodySmall,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ButtonPrimary(
                    title: negativeText,
                    color: AppColors.red,
                    onPressed: actionNegative,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ButtonGradient(
                      title: positiveText, onPressed: actionPositiveButton),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
