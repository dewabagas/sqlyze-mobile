import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqlyze/application/quizzes/quiz_detail_bloc/quiz_detail_bloc.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/locator.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/components/card_quiz.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';
import 'package:sqlyze/presentation/shared/widgets/cards/card_gradient.dart';

import 'package:sqlyze/presentation/lessons/chapter_detail/components/podcast_player.dart';
import 'package:sqlyze/presentation/shared/widgets/cards/card_expansion.dart';
import 'package:sqlyze/presentation/shared/widgets/others/pdf_viewer.dart';

class ChapterLearnBody extends StatefulWidget {
  final LessonDetail lessonDetail;
  const ChapterLearnBody({super.key, required this.lessonDetail});

  @override
  State<ChapterLearnBody> createState() => _ChapterLearnBodyState();
}

class _ChapterLearnBodyState extends State<ChapterLearnBody> {
  @override
  Widget build(BuildContext context) {
    final LessonDetail lessonDetail = widget.lessonDetail;
    return Container(
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(lessonDetail.title ?? 'Title', style: TextStyles.labelMedium),
          SizedBox(height: 5.h),
          Text(
            lessonDetail.description ?? 'Description',
            style: TextStyles.bodySmall.copyWith(
                color: AppColors.paragraphColor, fontWeight: FontWeight.w400),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10.h),
          CardGradient(
            title: lessonDetail.title,
            subtitle: lessonDetail.description,
            buttonTitle: 'Belajar Sekarang',
            onPressed: () {
              AutoRouter.of(context)
                  .push(RouteLessonStepDetail(lessonDetail: lessonDetail));
            },
          ),
          SizedBox(height: 16.h),
          // CardExpansion(
          //   title: 'Modul Materi',
          //   onExpansionChanged: (value) {
          //     debugPrint('onExpansionChanged $value');
          //     final Mixpanel mixPanel = locator.get();
          //     mixPanel.track('Lesson Steps - Belajar Sekarang');
          //   },
          //   children: [
          //     Container(
          //       height: 500.h,
          //       child: PDFViewer(
          //         learningDocument: lessonDetail.learningDocument!,
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(height: 16.h),
          // CardExpansion(title: 'Podcast', children: [
          //   Container(
          //       margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
          //       child: PodcastPlayer(
          //           title: '${lessonDetail.podcast?.title}',
          //           audioUrl: '${lessonDetail.podcast?.url}'))
          // ]),
          
          BlocBuilder<QuizDetailBloc, QuizDetailState>(
            builder: (context, state) {
              return state.map(
                  initial: (value) => const SizedBox(),
                  loadInProgress: (value) => const SizedBox(),
                  loadSuccess: (value) {
                    final quizDetail = value.quizDetail;
                    return CardExpansion(title: 'Quiz', children: [
                      CardQuiz(
                        title: '${quizDetail!.title}',
                        image: AppIllustrations.illLearning1,
                        questionCount: quizDetail.questionCount ?? 0,
                        duration: quizDetail.duration ?? '0',
                        passingScore: quizDetail.passingScore ?? 0,
                        hasAttempted: quizDetail.hasAttempted,
                        isUnlocked: quizDetail.isUnlocked,
                        onTap: () {
                          if (quizDetail.hasAttempted == true) {
                            AutoRouter.of(context)
                                .push(RouteQuizResult(quizDetail: quizDetail));
                          } else {
                            AutoRouter.of(context)
                                .push(RouteQuiz(quizDetail: quizDetail));
                          }
                        },
                        subtitle: 'General Quiz',
                      )
                    ]);
                  },
                  loadFailure: (value) {
                    return Text('Error Load Quiz',
                        style: TextStyles.labelSmall);
                  });
            },
          ),
        ],
      ),
    );
  }
}
