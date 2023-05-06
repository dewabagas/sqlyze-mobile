import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';

class ChapterExerciseBody extends StatefulWidget {
  const ChapterExerciseBody({super.key});

  @override
  State<ChapterExerciseBody> createState() => _ChapterExerciseBodyState();
}

class _ChapterExerciseBodyState extends State<ChapterExerciseBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pengenalan Data Definition Language',
              style: TextStyles.labelMedium),
        ],
      ),
    );
  }
}
