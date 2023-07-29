import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/application/quizzes/quiz_detail_bloc/quiz_detail_bloc.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/components/tab_chapter_detail.dart';
import 'package:sqlyze/presentation/shared/widgets/others/expandable_page_view/expandable_page_view.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'components/chapter_exercise_body.dart';
import 'components/chapter_learn_body.dart';

class ChapterDetailBody extends StatefulWidget {
  final LessonDetail lessonDetail;
  const ChapterDetailBody({super.key, required this.lessonDetail});

  @override
  State<ChapterDetailBody> createState() => _ChapterDetailBodyState();
}

class _ChapterDetailBodyState extends State<ChapterDetailBody> {
  int selectedIndex = 0;
  late PageController pageController;
  late YoutubePlayerController youtubePlayerController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    youtubePlayerController = YoutubePlayerController(
        initialVideoId: '${widget.lessonDetail.video!.url}',
        params: const YoutubePlayerParams(
            showFullscreenButton: true, autoPlay: false));
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    youtubePlayerController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    final LessonDetail lessonDetail = widget.lessonDetail;
    return PageDecorationTop(
        appBarTitle: 'SQLyze',
        child: SingleChildScrollView(
          child: YoutubePlayerControllerProvider(
            controller: youtubePlayerController,
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    padding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.h),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 0),
                              blurRadius: 4,
                              spreadRadius: 0,
                              color: const Color(0xFF3A3A3A).withOpacity(0.25))
                        ]),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: player)),
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: TabChapterDetail(
                    selectedIndex: selectedIndex,
                    onValueChanged: (i) {
                      pageController.animateToPage(
                        i,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.ease,
                      );
                      setState(() {
                        selectedIndex = i;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10.h),
                ExpandablePageView(
                  dragStartBehavior: DragStartBehavior.start,
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  animateFirstPage: true,
                  onPageChanged: (pageIndex) {
                    setState(() {
                      selectedIndex = pageIndex;
                    });
                  },
                  children: [
                    ChapterLearnBody(lessonDetail: lessonDetail),
                    ChapterExerciseBody()
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
