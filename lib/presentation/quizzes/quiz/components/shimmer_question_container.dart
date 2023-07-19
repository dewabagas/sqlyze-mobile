import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/question_background_card.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/quiz_background.dart';
import 'package:sqlyze/presentation/shared/widgets/loaders/shimmer_primary.dart';

class ShimmerQuestionContainer extends StatelessWidget {
  const ShimmerQuestionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Stack(children: [
          Align(
              alignment: Alignment.topCenter,
              child: QuizBackground(
                heightPercentage: 0.885,
              )),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 60.h,
                ),
                child: ShimmerPrimary(
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
                    ],
                  ),
                ),
              )),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top, left: 16.w),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.chevron_left,
                      color: AppColors.white,
                      size: 30.w,
                    ),
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
