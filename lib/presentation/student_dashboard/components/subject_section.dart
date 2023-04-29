import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/student_dashboard/components/card_subject.dart';

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
          Text('Materi',
              style: TextStyles.titleSmall.copyWith(
                  fontWeight: FontWeight.w700, color: AppColors.charcoal)),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  child: SvgPicture.asset(AppBanners.bnrDdl, width: 150.w),
                ),
              ),
              Expanded(
                child: InkWell(
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
