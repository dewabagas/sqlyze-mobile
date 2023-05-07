import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/questions_container.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/quiz_background.dart';

class PageQuiz extends StatefulWidget {
  const PageQuiz({super.key});

  @override
  State<PageQuiz> createState() => _PageQuizState();
}

class _PageQuizState extends State<PageQuiz> with TickerProviderStateMixin {
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
                currentQuestionIndex: 1,
                questionContentAnimation: questionContentAnimation,
                questionScaleDownAnimation: questionScaleDownAnimation,
                questionScaleUpAnimation: questionScaleUpAnimation,
                questionSlideAnimation: questionSlideAnimation,
                questionAnimationController: questionAnimationController,
                questionContentAnimationController:
                    questionContentAnimationController,
                questions: [],
                timerAnimationController: timerAnimationController,
              )),
          buildTopMenu()
        ],
      ),
    );
  }

  Widget buildTopMenu() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        child: Row(
          children: [
            Icon(
              Icons.chevron_left,
              color: AppColors.black,
            )
          ],
        ),
      ),
    );
  }
}
