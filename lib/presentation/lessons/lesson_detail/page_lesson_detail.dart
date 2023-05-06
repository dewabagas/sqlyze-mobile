import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/lessons/lesson_detail/components/card_lesson.dart';
import 'package:sqlyze/presentation/lessons/lesson_detail/components/lesson_header.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';
import 'package:sqlyze/presentation/shared/widgets/images/image_circle.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/draggable_page.dart';
import 'package:sqlyze/presentation/student_dashboard/components/greetings_section.dart';

class PageLessonDetail extends StatefulWidget {
  const PageLessonDetail({super.key});

  @override
  State<PageLessonDetail> createState() => _PageLessonDetailState();
}

class _PageLessonDetailState extends State<PageLessonDetail> {
  @override
  Widget build(BuildContext context) {
    return DraggablePage(
        title: Text('Data Definition Language',
            style: TextStyles.headlineSmall.copyWith(fontSize: 14.sp)),
        headerExpandedHeight: 0.28,
        backgroundColor: AppColors.white,
        appBarColor: AppColors.white,
        headerWidget: const LessonHeader(),
        body: [buildLessonBody()]);
  }

  Widget buildLessonBody() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chapters',
            style: TextStyles.labelLarge,
          ),
          SizedBox(height: 10.h),
          CardLesson(
              onTap: () =>
                  AutoRouter.of(context).push(const RouteChapterDetail())),
        ],
      ),
    );
  }
}
