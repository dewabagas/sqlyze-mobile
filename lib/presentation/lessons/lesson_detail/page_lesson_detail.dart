import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/application/lessons/lesson_list_bloc/lesson_list_bloc.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/lessons/lesson_detail/components/card_lesson.dart';
import 'package:sqlyze/presentation/lessons/lesson_detail/components/lesson_header.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';
import 'package:sqlyze/presentation/shared/widgets/errors/error_page.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/draggable_page.dart';

class PageLessonDetail extends StatefulWidget {
  final String lessonName;
  final int lessonType;
  const PageLessonDetail(
      {super.key, required this.lessonName, required this.lessonType});

  @override
  State<PageLessonDetail> createState() => _PageLessonDetailState();
}

class _PageLessonDetailState extends State<PageLessonDetail> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LessonListBloc>(
      create: (context) => getIt<LessonListBloc>()
        ..add(LessonListEvent.getAllLessons(widget.lessonType)),
      child: BlocBuilder<LessonListBloc, LessonListState>(
        builder: (context, state) {
          return state.map(
              initial: (value) => const SizedBox.shrink(),
              loadInProgress: (value) => const SizedBox.shrink(),
              loadSuccess: (value) {
                log('lesson lsit ${value.lessonList?.length}');
                final lessonList = value.lessonList;
                return DraggablePage(
                    title: Text('Data Definition Language',
                        style:
                            TextStyles.headlineSmall.copyWith(fontSize: 14.sp)),
                    headerExpandedHeight: 0.28,
                    backgroundColor: AppColors.white,
                    appBarColor: AppColors.white,
                    headerWidget: LessonHeader(
                      lessonAmount: lessonList?.length ?? 0,
                      lessonName: widget.lessonName,
                    ),
                    body: [buildLessonBody(lessonList)]);
              },
              loadFailure: (value) {
                return ErrorPage(message: value.message);
              });
        },
      ),
    );
  }

  Widget buildLessonBody(List<LessonDetail>? lessonList) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chapters',
            style: TextStyles.labelLarge,
          ),
          SizedBox(height: 20.h),
          ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: lessonList?.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var lessonItem = lessonList?[index];
              return Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: CardLesson(
                      title: lessonItem?.title,
                      subtitle: lessonItem?.description,
                      onTap: () => AutoRouter.of(context)
                          .push(const RouteChapterDetail())));
            },
          ),
        ],
      ),
    );
  }
}
