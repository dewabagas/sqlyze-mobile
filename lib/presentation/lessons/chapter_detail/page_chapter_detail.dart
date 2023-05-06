import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/components/chapter_exercise_body.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/components/chapter_learn_body.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/components/tab_chapter_detail.dart';
import 'package:sqlyze/presentation/shared/widgets/others/expandable_page_view/expandable_page_view.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PageChapterDetail extends StatefulWidget {
  const PageChapterDetail({super.key});

  @override
  State<PageChapterDetail> createState() => _PageChapterDetailState();
}

class _PageChapterDetailState extends State<PageChapterDetail> {
  int selectedIndex = 0;
  late PageController pageController;
  late YoutubePlayerController youtubePlayerController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    youtubePlayerController = YoutubePlayerController(
        initialVideoId: 'U4z3KvWeMOc',
        params: YoutubePlayerParams(showFullscreenButton: true));
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
    return PageDecorationTop(
        appBarTitle: 'Data Definition Language',
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
                  children: const [ChapterLearnBody(), ChapterExerciseBody()],
                ),
              ],
            ),
          ),
        ));
  }
}
