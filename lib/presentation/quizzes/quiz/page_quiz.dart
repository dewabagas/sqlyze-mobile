import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/application/quizzes/quiz_questions_bloc/quiz_questions_bloc.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_question.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/questions_container.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/quiz_background.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_circle.dart';
import 'package:sqlyze/presentation/shared/widgets/errors/error_page.dart';

class PageQuiz extends StatefulWidget {
  final int quizId;
  const PageQuiz({super.key, required this.quizId});

  @override
  State<PageQuiz> createState() => _PageQuizState();
}

class _PageQuizState extends State<PageQuiz> with TickerProviderStateMixin {
  int currentQuestionIndex = 0;
  late BuildContext _buildContext;
  late AnimationController questionAnimationController;
  late AnimationController questionContentAnimationController;
  late AnimationController timerAnimationController = AnimationController(
    vsync: this,
  );
  late Animation<double> questionSlideAnimation;
  late Animation<double> questionScaleUpAnimation;
  late Animation<double> questionScaleDownAnimation;
  late Animation<double> questionContentAnimation;
  late AnimationController animationController;
  late AnimationController topContainerAnimationController;
  late AnimationController showOptionAnimationController =
      AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  late Animation<double> showOptionAnimation =
      Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
          parent: showOptionAnimationController, curve: Curves.easeInOut));

  @override
  void initState() {
    initializeAnimation();
    super.initState();
  }

  void initializeAnimation() {
    questionContentAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    questionAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 525));
    questionSlideAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: questionAnimationController, curve: Curves.easeInOut));
    questionScaleUpAnimation = Tween<double>(begin: 0.0, end: 0.1).animate(
        CurvedAnimation(
            parent: questionAnimationController,
            curve: Interval(0.0, 0.5, curve: Curves.easeInQuad)));
    questionContentAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: questionContentAnimationController,
            curve: Curves.easeInQuad));
    questionScaleDownAnimation = Tween<double>(begin: 0.0, end: 0.05).animate(
        CurvedAnimation(
            parent: questionAnimationController,
            curve: Interval(0.5, 1.0, curve: Curves.easeOutQuad)));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuizQuestionsBloc>(
        create: (context) => getIt<QuizQuestionsBloc>()
          ..add(QuizQuestionsEvent.getQuizQuestions(widget.quizId)),
        child: BlocBuilder<QuizQuestionsBloc, QuizQuestionsState>(
          builder: (context, state) {
            return state.map(
                initial: (value) => const SizedBox(),
                loadInProgress: (value) => const CircularProgressIndicator(),
                loadSuccess: (value) {
                  debugPrint('questions ${value.quizQuestions}');
                  return Builder(builder: (context) {
                    _buildContext = context;
                    return buildQuiz(
                        value.currentQuestionIndex, value.quizQuestions);
                  });
                },
                loadFailure: (value) {
                  return ErrorPage(message: value.message);
                });
          },
        ));
  }

  Widget buildQuiz(
      int currentQuestionIndex, List<QuizQuestion>? quizQuestions) {
    if (quizQuestions == null || quizQuestions.isEmpty) {
      return const SizedBox();
    }

    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: QuizBackground(
                heightPercentage: 0.885,
              )),
          Align(
              alignment: Alignment.topCenter,
              child: QuestionsContainer(
                currentQuestionIndex: currentQuestionIndex,
                questionContentAnimation: questionContentAnimation,
                questionScaleDownAnimation: questionScaleDownAnimation,
                questionScaleUpAnimation: questionScaleUpAnimation,
                questionSlideAnimation: questionSlideAnimation,
                questionAnimationController: questionAnimationController,
                questionContentAnimationController:
                    questionContentAnimationController,
                questions: quizQuestions,
                timerAnimationController: timerAnimationController,
                onQuestionAnswered: handleQuestionAnswered,
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(bottom: 20.h, right: 20.w, left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonCircle(
                    child: Icon(Icons.skip_previous, color: AppColors.white),
                    color: AppColors.primary,
                    onTap: () => _buildContext
                        .read<QuizQuestionsBloc>()
                        .add(QuizQuestionsEvent.previousQuestion()),
                  ),
                  ButtonCircle(
                    child: Icon(Icons.skip_next, color: AppColors.white),
                    color: AppColors.primary,
                    onTap: () => _buildContext
                        .read<QuizQuestionsBloc>()
                        .add(QuizQuestionsEvent.nextQuestion()),
                  )
                ],
              ),
            ),
          ),
          buildTopMenu()
        ],
      ),
    );
  }

  void handleQuestionAnswered(int nextQuestionIndex) {
    _buildContext
        .read<QuizQuestionsBloc>()
        .add(QuizQuestionsEvent.nextQuestion());
  }

  Widget buildTopMenu() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 16.w),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                AutoRouter.of(context).pop();
              },
              child: Icon(
                Icons.chevron_left,
                color: AppColors.white,
                size: 30.w,
              ),
            )
          ],
        ),
      ),
    );
  }
}
