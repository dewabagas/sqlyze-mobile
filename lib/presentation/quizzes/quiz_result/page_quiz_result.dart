import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sqlyze/application/quizzes/quiz_result_bloc/quiz_result_bloc.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/domain/core/utils/ui_utils.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_result.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/radial_percentage_result_container.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/images/image_circle.dart';
import 'package:sqlyze/presentation/shared/widgets/others/show_dialog.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class PageQuizResult extends StatefulWidget {
  final int quizId;
  const PageQuizResult({super.key, required this.quizId});

  @override
  State<PageQuizResult> createState() => _PageQuizResultState();
}

class _PageQuizResultState extends State<PageQuizResult> {
  final ScreenshotController screenshotController = ScreenshotController();
  late int userId;

  @override
  void initState() {
    getUserId();
    super.initState();
  }

  getUserId() async {
    int tempUserId =
        await getIntValuesPreference(key: PreferenceConstants.userId);
    setState(() {
      userId = tempUserId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuizResultBloc>(
      create: (context) => getIt<QuizResultBloc>()
        ..add(QuizResultEvent.getQuizResult(widget.quizId, userId)),
      child: BlocBuilder<QuizResultBloc, QuizResultState>(
        builder: (context, state) {
          return state.map(
              initial: (value) => const SizedBox.shrink(),
              loadInProgress: (value) => const SizedBox.shrink(),
              loadSuccess: (value) {
                debugPrint('result quiz ${value.quizResult}');
                return buildQuizResult(value.quizResult);
              },
              loadFailure: (value) => const SizedBox.shrink());
        },
      ),
    );
  }

  Widget buildQuizResult(QuizResult? quizResult) {
    return PageDecorationTop(
        appBarTitle: 'Quiz Result',
        hasBack: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40.h),
                  Center(child: _buildResultContainer(context, quizResult)),
                  SizedBox(height: 30.0.h),
                  Container(
                    width: screenWidth * (0.85),
                    child: _buildResultButtons(context),
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          ],
        ));
  }

  Widget _buildResultButtons(BuildContext context) {
    double betweenButoonSpace = 15.0;
    return Column(
      children: [
        ButtonGradient(
            title: 'Bagikan Skor-mu!',
            onPressed: () async {
              try {
                final image = await screenshotController.capture();
                final directory =
                    (await getApplicationDocumentsDirectory()).path;

                String fileName =
                    DateTime.now().microsecondsSinceEpoch.toString();
                File file = await File("$directory/$fileName.png").create();
                await file.writeAsBytes(image!.buffer.asUint8List());
                await Share.shareFiles(
                  [file.path],
                  text: 'Share',
                );
              } catch (e) {
                showErrorDialog(context: context, message: e.toString());
              }
            }),
        SizedBox(
          height: betweenButoonSpace,
        ),
        ButtonPrimary(
            title: 'Dashboard',
            color: AppColors.pink,
            onPressed: () {
              AutoRouter.of(context).pushAndPopUntil(
                  const RouteStudentDashboard(),
                  predicate: (route) => false);
            })
      ],
    );
  }

  Widget _buildResultContainer(BuildContext context, QuizResult? quizResult) {
    return Screenshot(
      controller: screenshotController,
      child: Container(
        height: screenHeight * (0.575),
        width: screenWidth * (0.85),
        decoration: BoxDecoration(
          boxShadow: [UiUtils.buildBoxShadow()],
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: _buildResultDetails(quizResult),
      ),
    );
  }

  double calculatePercentage(int? correctAnswers, int? totalQuestions) {
    return totalQuestions != null && totalQuestions != 0
        ? (correctAnswers! / totalQuestions) * 100
        : 0;
  }

  Widget _buildResultDetails(QuizResult? quizResult) {
    final percentage = calculatePercentage(
        quizResult?.correctAnswers, quizResult?.totalQuestions);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: Alignment.center,
          child: SvgPicture.asset(AppIllustrations.illCelebration),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: LayoutBuilder(
            builder: (context, constraints) {
              double verticalSpacePercentage = 0.0;
              double profileRadiusPercentage = 0.0;

              double radialSizePercentage = 0.0;
              if (constraints.maxHeight < 355.0) {
                verticalSpacePercentage = 0.015;
                profileRadiusPercentage = 0.35; //test in
                radialSizePercentage = 0.6;
              } else {
                verticalSpacePercentage = 0.035;
                profileRadiusPercentage = 0.375;

                radialSizePercentage = 0.525;
              }

              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildGreetingMessage(
                      '${quizResult?.fullName}', 'Hasil Quiz'),
                  SizedBox(height: 16.h),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.pink.withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            height: constraints.maxHeight *
                                profileRadiusPercentage),
                      ),
                      Center(
                        child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                            height: constraints.maxHeight *
                                (profileRadiusPercentage - 0.025)),
                      ),
                      Center(
                        child: ImageCircle(
                            image: quizResult?.profileImageUrl,
                            height: constraints.maxHeight *
                                (profileRadiusPercentage - 0.05),
                            width: constraints.maxWidth *
                                (profileRadiusPercentage - 0.05 + 0.15)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text('Selamat!',
                      style:
                          TextStyles.bodyLarge.copyWith(color: AppColors.white))
                ],
              );
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: _buildResultDataWithIconContainer(
                      '${quizResult?.incorrectAnswers}/${quizResult?.totalQuestions}',
                      AppIcons.icWrong,
                      EdgeInsetsDirectional.only(start: 15.w, bottom: 30.h)),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: LayoutBuilder(builder: (context, constraints) {
                    double radialSizePercentage = 0.0;
                    if (constraints.maxHeight < 355.0) {
                      radialSizePercentage = 0.4;
                    } else {
                      radialSizePercentage = 0.325;
                    }
                    return Transform.translate(
                      offset: Offset(0.0, 15.0), //
                      child: RadialPercentageResultContainer(
                        circleColor: AppColors.white,
                        arcColor: AppColors.white,
                        arcStrokeWidth: 10.0,
                        circleStrokeWidth: 10.0,
                        radiusPercentage: 0.27,
                        percentage: percentage,
                        timeTakenToCompleteQuizInSeconds:
                            quizResult?.totalDuration,
                        size: Size(
                            constraints.maxHeight * radialSizePercentage,
                            constraints.maxHeight *
                                radialSizePercentage), //150.0 , 150.0
                      ),
                    );
                  }),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: _buildResultDataWithIconContainer(
                      '${quizResult?.correctAnswers}/${quizResult?.totalQuestions}',
                      AppIcons.icCorrect,
                      EdgeInsetsDirectional.only(end: 15.w, bottom: 30.h)),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildResultDataWithIconContainer(
      String title, String icon, EdgeInsetsGeometry margin) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(10.r)),
      width: screenWidth * (0.2125),
      height: 28.h,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          SizedBox(width: 5.h),
          Text(
            title,
            style: TextStyles.bodySmall,
          ),
        ],
      ),
    );
  }

  Widget _buildGreetingMessage(String title, String message) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 15.h),
        Container(
            alignment: Alignment.center,
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyles.labelLarge.copyWith(color: AppColors.white),
            )),
        SizedBox(height: 5.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          alignment: Alignment.center,
          child: Text(title,
              textAlign: TextAlign.center,
              style: TextStyles.bodyLarge.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.w300)),
        )
      ],
    );
  }
}
