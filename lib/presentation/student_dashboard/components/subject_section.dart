import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';

class SubjectSection extends StatefulWidget {
  const SubjectSection({super.key});

  @override
  State<SubjectSection> createState() => _SubjectSectionState();
}

class _SubjectSectionState extends State<SubjectSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Materi',
                  style: TextStyles.titleSmall.copyWith(
                      fontWeight: FontWeight.w700, color: AppColors.charcoal)),
              InkWell(
                child: Text('Lihat Semua',
                    style: TextStyles.bodyVerySmall.copyWith(
                        color: AppColors.primary, fontWeight: FontWeight.w600)),
              )
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => AutoRouter.of(context).push(RouteLessonDetail(
                      lessonName: 'Data Definition Language', lessonType: 1)),
                  child: SvgPicture.asset(AppBanners.bnrDdl, width: 150.w),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => AutoRouter.of(context).push(RouteLessonDetail(
                      lessonName: 'Data Manipulation Language', lessonType: 2)),
                  child: SvgPicture.asset(AppBanners.bnrDml, width: 150.w),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
