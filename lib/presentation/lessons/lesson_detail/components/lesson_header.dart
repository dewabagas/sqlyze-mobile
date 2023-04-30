import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class LessonHeader extends StatefulWidget {
  const LessonHeader({super.key});

  @override
  State<LessonHeader> createState() => _LessonHeaderState();
}

class _LessonHeaderState extends State<LessonHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: [
            AppColors.primary.withOpacity(.1),
            AppColors.primary.withOpacity(.9),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.h),
          InkWell(
              onTap: () => AutoRouter.of(context).pop(),
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.charcoal,
              )),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Data Definition Language',
                    style: TextStyles.labelLarge,
                  ),
                  Text('10 Chapters', style: TextStyles.bodySmall)
                ],
              ),
              SvgPicture.asset(AppIllustrations.illSad)
            ],
          ),
          // SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
