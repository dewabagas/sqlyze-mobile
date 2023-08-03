import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'package:sqlyze/application/quizzes/quiz_detail_bloc/quiz_detail_bloc.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_detail.dart';
import 'package:sqlyze/locator.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/components/card_quiz.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/components/podcast_player.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';
import 'package:sqlyze/presentation/shared/widgets/cards/card_expansion.dart';
import 'package:sqlyze/presentation/shared/widgets/others/pdf_viewer.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ChapterExerciseBody extends StatefulWidget {
  final LessonDetail lessonDetail;
  const ChapterExerciseBody({super.key, required this.lessonDetail});

  @override
  State<ChapterExerciseBody> createState() => _ChapterExerciseBodyState();
}

class _ChapterExerciseBodyState extends State<ChapterExerciseBody> {
  late YoutubePlayerController youtubePlayerController;

  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
        initialVideoId: '${widget.lessonDetail.video!.url}',
        params: const YoutubePlayerParams(
            showFullscreenButton: true, autoPlay: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizDetailBloc, QuizDetailState>(
      builder: (context, state) {
        return state.map(
            initial: (value) => const SizedBox.shrink(),
            loadInProgress: (value) => const SizedBox.shrink(),
            loadSuccess: (value) {
              return buildQuizSuccess(value.quizDetail);
            },
            loadFailure: (value) {
              return Center(child: Text(value.message!));
            });
      },
    );
  }

  Widget buildQuizSuccess(QuizDetail? quizDetail) {
    const player = YoutubePlayerIFrame();
    final LessonDetail lessonDetail = widget.lessonDetail;
    return Container(
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Video Pembelajaran', style: TextStyles.labelMedium),
          SizedBox(height: 10.h),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 0.w),
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.h),
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
                  borderRadius: BorderRadius.circular(10.r), child: player)),
          SizedBox(height: 16.h),
          CardExpansion(
            title: 'Modul Materi',
            onExpansionChanged: (value) {
              debugPrint('onExpansionChanged $value');
              final Mixpanel mixPanel = locator.get();
              mixPanel.track('Lesson Steps - Belajar Sekarang');
            },
            children: [
              Container(
                height: 500.h,
                child: PDFViewer(
                  learningDocument: lessonDetail.learningDocument!,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          CardExpansion(title: 'Podcast', children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                child: PodcastPlayer(
                    title: '${lessonDetail.podcast?.title}',
                    audioUrl: '${lessonDetail.podcast?.url}'))
          ]),
        ],
      ),
    );
  }
}
