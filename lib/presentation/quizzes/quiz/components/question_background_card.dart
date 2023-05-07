import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class QuestionBackgroundCard extends StatelessWidget {
  final double opacity;
  final double widthPercentage;
  final double topMarginPercentage;
  final double heightPercentage;

  QuestionBackgroundCard(
      {Key? key,
      required this.opacity,
      required this.heightPercentage,
      required this.topMarginPercentage,
      required this.widthPercentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * topMarginPercentage),
        width: MediaQuery.of(context).size.width * widthPercentage,
        height: MediaQuery.of(context).size.height * heightPercentage,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(25.r)),
      ),
    );
  }
}
