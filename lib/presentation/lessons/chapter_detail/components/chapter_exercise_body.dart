import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/application/quizzes/quiz_detail_bloc/quiz_detail_bloc.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_detail.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/components/card_quiz.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';

class ChapterExerciseBody extends StatefulWidget {
  const ChapterExerciseBody({super.key});

  @override
  State<ChapterExerciseBody> createState() => _ChapterExerciseBodyState();
}

class _ChapterExerciseBodyState extends State<ChapterExerciseBody> {
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
    return Container(
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Quiz', style: TextStyles.labelMedium),
          SizedBox(height: 10.h),
          CardQuiz(
            title: '${quizDetail!.title}',
            image: AppIllustrations.illLearning1,
            questionCount: quizDetail.questionCount ?? 0,
            duration: quizDetail.duration ?? '0',
            passingScore: quizDetail.passingScore ?? 0,
            onTap: () {
              AutoRouter.of(context).push(RouteQuiz(quizId: quizDetail.id!));
              // AutoRouter.of(context).push(RouteQuizResult());
            },
            subtitle: 'General Quiz',
          )
        ],
      ),
    );
  }
}
