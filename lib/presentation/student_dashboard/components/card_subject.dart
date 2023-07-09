import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class CardSubject extends StatefulWidget {
  final String label;
  final String? image;
  final Color? color;
  const CardSubject({super.key, required this.label, this.image, this.color});

  @override
  State<CardSubject> createState() => _CardSubjectState();
}

class _CardSubjectState extends State<CardSubject> {
  @override
  Widget build(BuildContext context) {
    List<String> words = widget.label.split(' ');
    return Container(
      width: screenWidth / 2.3,
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        gradient: LinearGradient(
          begin: FractionalOffset.centerLeft,
          end: FractionalOffset.centerRight,
          colors: [
            AppColors.primary.withOpacity(.3),
            widget.color ?? AppColors.primary.withOpacity(.3),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(
                width: screenWidth / 6,
                child: Text(
                  widget.label,
                  style: TextStyles.bodyVerySmall,
                  maxLines: 3,
                )),
          ),
          Expanded(
            child: SvgPicture.asset(
              '${widget.image}',
              width: 80.w,
            ),
          )
        ],
      ),
    );
  }
}
