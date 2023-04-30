import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/cards/card_expansion.dart';

class ChapterLearnBody extends StatefulWidget {
  const ChapterLearnBody({super.key});

  @override
  State<ChapterLearnBody> createState() => _ChapterLearnBodyState();
}

class _ChapterLearnBodyState extends State<ChapterLearnBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pengenalan Data Definition Language',
              style: TextStyles.labelMedium),
          SizedBox(height: 5.h),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
            style: TextStyles.bodySmall.copyWith(
                color: AppColors.paragraphColor, fontWeight: FontWeight.w400),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10.h),
          CardExpansion(
            title: 'Materi',
            children: [],
          ),
          SizedBox(height: 10.h),
          CardExpansion(title: 'Podcast', children: [])
        ],
      ),
    );
  }
}
