import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_question.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/option_container.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/question_background_card.dart';

class QuestionsContainer extends StatefulWidget {
  final int currentQuestionIndex;
  final List<QuizQuestion> questions;
  final AnimationController questionContentAnimationController;
  final AnimationController questionAnimationController;
  final Animation<double> questionSlideAnimation;
  final Animation<double> questionScaleUpAnimation;
  final Animation<double> questionScaleDownAnimation;
  final Animation<double> questionContentAnimation;
  final AnimationController timerAnimationController;
  final bool? showAnswerCorrectness;
  final Function(int) onQuestionAnswered;
  const QuestionsContainer(
      {super.key,
      required this.questions,
      required this.currentQuestionIndex,
      required this.questionContentAnimationController,
      required this.questionAnimationController,
      required this.questionSlideAnimation,
      required this.questionScaleUpAnimation,
      required this.questionScaleDownAnimation,
      required this.questionContentAnimation,
      required this.timerAnimationController,
      this.showAnswerCorrectness,
      required this.onQuestionAnswered});

  @override
  State<QuestionsContainer> createState() => _QuestionsContainerState();
}

class _QuestionsContainerState extends State<QuestionsContainer> {
  int getQuestionsLength() {
    if (widget.questions.isNotEmpty) {
      return widget.questions.length;
    }
    return widget.questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 60.h,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          QuestionBackgroundCard(
            heightPercentage: 0.725,
            opacity: 0.7,
            topMarginPercentage: 0.02,
            widthPercentage: 0.8,
          ),
          QuestionBackgroundCard(
            heightPercentage: 0.725,
            opacity: 0.85,
            topMarginPercentage: 0.01,
            widthPercentage: 0.9,
          ),
          ..._buildQuestions(context),
        ],
      ),
    );
  }

  List<Widget> _buildQuestions(BuildContext context) {
    List<Widget> children = [];
    if (widget.questions != null && widget.questions.isNotEmpty) {
      children.add(_buildQuestion(widget.currentQuestionIndex, context,
          widget.questions[widget.currentQuestionIndex]));
    }

    return children;
  }

  Widget _buildQuestion(
      int questionIndex, BuildContext context, QuizQuestion question) {
    debugPrint('Question: ${question.question}');
    debugPrint('Question Index: ${questionIndex}');

    // we will always show the current question
    return FadeTransition(
      opacity: widget.questionSlideAnimation
          .drive(Tween<double>(begin: 1.0, end: 0.0)),
      child: SlideTransition(
        child: _buildQuestionContainer(
            1.0, questionIndex, true, context, question),
        position: widget.questionSlideAnimation
            .drive(Tween<Offset>(begin: Offset.zero, end: Offset(-1.5, 0.0))),
      ),
    );
  }

  Widget _buildQuestionContainer(double scale, int index, bool showContent,
      BuildContext context, QuizQuestion question) {
    return LayoutBuilder(builder: (context, constraints) {
      debugPrint('constraints $constraints');
      return SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24.h),
            Stack(
              alignment: Alignment.center,
              children: [
                _buildCurrentQuestionIndex(),
              ],
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.w),
              child: Divider(
                  color: AppColors.primary.withOpacity(0.8), thickness: 0.5),
            ),
            SizedBox(height: 10.h),
            Container(
              width: screenWidth / 1.35,
              child: Column(
                children: [
                  _buildQuestionText(question),
                  SizedBox(height: 14.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: _buildOptions(question, constraints),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.h),
          ],
        ),
      );
    });
  }

  Widget _buildCurrentQuestionIndex() {
    return Align(
      alignment: AlignmentDirectional.center,
      child: Text(
        '${widget.currentQuestionIndex + 1} | ${widget.questions.length}',
        style: TextStyles.bodyVerySmall.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildQuestionText(QuizQuestion question) {
    return Text(
      '${question.question}',
      textAlign: TextAlign.center,
      style: TextStyles.labelLarge,
    );
  }

  Widget _buildOptions(QuizQuestion question, BoxConstraints constraints) {
    if (question.quizAnswers == null || question.quizAnswers!.isEmpty) {
      return const SizedBox();
    }

    return Column(
      children: question.quizAnswers!.map((answer) {
        return OptionContainer(
          submittedAnswerId: '',
          showAnswerCorrectness: false,
          hasSubmittedAnswerForCurrentQuestion: () {
            return false;
          },
          constraints: constraints,
          answerOption: '${answer.answer}',
          correctOptionId: answer.isCorrect!,
          submitAnswer: (String selectedOption, bool isCorrect) {
            print('User selected: $selectedOption');
            print('Is the answer correct: $isCorrect');
            widget.onQuestionAnswered(widget.currentQuestionIndex + 1);
          },
        );
      }).toList(),
    );
  }
}
