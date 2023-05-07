import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/horizontal_timer_container.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/option_container.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/question_background_card.dart';

class QuestionsContainer extends StatefulWidget {
  final int currentQuestionIndex;
  final List<String> questions;
  final AnimationController questionContentAnimationController;
  final AnimationController questionAnimationController;
  final Animation<double> questionSlideAnimation;
  final Animation<double> questionScaleUpAnimation;
  final Animation<double> questionScaleDownAnimation;
  final Animation<double> questionContentAnimation;
  final AnimationController timerAnimationController;
  final bool? showAnswerCorrectness;
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
      this.showAnswerCorrectness});

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
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        QuestionBackgroundCard(
          heightPercentage: 0.725,
          opacity: 0.7,
          topMarginPercentage: 0.02,
          widthPercentage: 0.65,
        ),
        QuestionBackgroundCard(
          heightPercentage: 0.725,
          opacity: 0.85,
          topMarginPercentage: 0.01,
          widthPercentage: 0.75,
        ),
      ],
    );
  }

  List<Widget> _buildQuesitons(BuildContext context) {
    List<Widget> children = [];

    //loop terminate condition will be questions.length instead of 4
    for (var i = 0; i < getQuestionsLength(); i++) {
      //add question
      children.add(_buildQuestion(i, context));
    }
    //need to reverse the list in order to display 1st question in top
    children = children.reversed.toList();

    return children;
  }

  Widget _buildQuestion(int questionIndex, BuildContext context) {
    //print(questionIndex);
    //if current question index is same as question index means
    //it is current question and will be on top
    //so we need to add animation that slide and fade this question
    if (widget.currentQuestionIndex == questionIndex) {
      return FadeTransition(
          opacity: widget.questionSlideAnimation
              .drive(Tween<double>(begin: 1.0, end: 0.0)),
          child: SlideTransition(
              child: _buildQuesitonContainer(1.0, questionIndex, true, context),
              position: widget.questionSlideAnimation.drive(
                  Tween<Offset>(begin: Offset.zero, end: Offset(-1.5, 0.0)))));
    }
    //if the question is second or after current question
    //so we need to animation that scale this question
    //initial scale of this question is 0.95

    else if (questionIndex > widget.currentQuestionIndex &&
        (questionIndex == widget.currentQuestionIndex + 1)) {
      return AnimatedBuilder(
          animation: widget.questionAnimationController,
          builder: (context, child) {
            double scale = 0.95 +
                widget.questionScaleUpAnimation.value -
                widget.questionScaleDownAnimation.value;
            return _buildQuesitonContainer(
                scale, questionIndex, false, context);
          });
    }
    //to build question except top 2

    else if (questionIndex > widget.currentQuestionIndex) {
      return _buildQuesitonContainer(1.0, questionIndex, false, context);
    }
    //if the question is already animated that show empty container
    return Container();
  }

  Widget _buildQuesitonContainer(
      double scale, int index, bool showContent, BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 17.5.h),
          HorizontalTimerContainer(
              timerAnimationController: widget.timerAnimationController),
          SizedBox(height: 15.h),
          Container(
            child: Stack(
              alignment: Alignment.center,
              children: [
                _buildCurrentQuestionIndex(),
              ],
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.secondary,
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            alignment: Alignment.center,
            child: _buildQuestionText(
              questionText: 'question',
              questionType: 'question type',
            ),
          ),
          // question.imageUrl != null && question.imageUrl!.isNotEmpty
          //     ? SizedBox(
          //         height: constraints.maxHeight * (0.0175),
          //       )
          //     : SizedBox(
          //         height: constraints.maxHeight * (0.02),
          //       ),
          // question.imageUrl != null && question.imageUrl!.isNotEmpty
          //     ? Container(
          //         width: MediaQuery.of(context).size.width,
          //         height: constraints.maxHeight * (0.225),
          //         alignment: Alignment.center,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(25.0),
          //         ),
          //         child: ClipRRect(
          //           borderRadius: BorderRadius.circular(25.0),
          //           child: CachedNetworkImage(
          //             placeholder: (context, _) {
          //               return Center(
          //                 child: CircularProgressContainer(
          //                   useWhiteLoader: false,
          //                 ),
          //               );
          //             },
          //             imageUrl: question.imageUrl!,
          //             imageBuilder: (context, imageProvider) {
          //               return Container(
          //                 decoration: BoxDecoration(
          //                   image: DecorationImage(
          //                       image: imageProvider, fit: BoxFit.cover),
          //                   borderRadius: BorderRadius.circular(25.0),
          //                 ),
          //               );
          //             },
          //             errorWidget: (context, image, error) {
          //               return Center(
          //                 child: Icon(
          //                   Icons.error,
          //                   color: Theme.of(context).primaryColor,
          //                 ),
          //               );
          //             },
          //           ),
          //         ),
          //       )
          //     : Container(),
          _buildOptions('question', BoxConstraints()),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentQuestionIndex() {
    return Align(
      alignment: AlignmentDirectional.center,
      child: Text(
        "${widget.currentQuestionIndex + 1} | ${widget.questions.length}",
        style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      ),
    );
  }

  Widget _buildQuestionText(
      {required String questionText, required String questionType}) {
    return Text(
      questionText,
      style: TextStyles.labelMedium,
    );
  }

  Widget _buildOptions(String question, BoxConstraints constraints) {
    return OptionContainer(
      submittedAnswerId: '1',
      showAnswerCorrectness: widget.showAnswerCorrectness!,
      showAudiencePoll: true,
      audiencePollPercentage: 1,
      hasSubmittedAnswerForCurrentQuestion: () {},
      constraints: constraints,
      answerOption: 'option',
      correctOptionId: '',
      submitAnswer: () {},
    );
  }
}
