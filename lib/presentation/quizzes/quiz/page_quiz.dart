import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/application/quizzes/quiz_answer_submission_cubit/quiz_answer_submission_cubit.dart';
import 'package:sqlyze/application/quizzes/quiz_questions_bloc/quiz_questions_bloc.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_question.dart';
import 'package:sqlyze/domain/quizzes/requests/quiz_submission_request.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/questions_container.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/quiz_background.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/shimmer_question_container.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_circle.dart';
import 'package:sqlyze/presentation/shared/widgets/dialogs/custom_dialog_confirmation.dart';
import 'package:sqlyze/presentation/shared/widgets/errors/error_page.dart';
import 'package:sqlyze/presentation/shared/widgets/others/show_dialog.dart';

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
  late AnimationController showOptionAnimationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 500));
  late Animation<double> showOptionAnimation =
      Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
          parent: showOptionAnimationController, curve: Curves.easeInOut));

  @override
  void initState() {
    initializeAnimation();
    super.initState();
  }

  void initializeAnimation() {
    questionContentAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
    questionAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 525));
    questionSlideAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: questionAnimationController, curve: Curves.easeInOut));
    questionScaleUpAnimation = Tween<double>(begin: 0.0, end: 0.1).animate(
        CurvedAnimation(
            parent: questionAnimationController,
            curve: const Interval(0.0, 0.5, curve: Curves.easeInQuad)));
    questionContentAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: questionContentAnimationController,
            curve: Curves.easeInQuad));
    questionScaleDownAnimation = Tween<double>(begin: 0.0, end: 0.05).animate(
        CurvedAnimation(
            parent: questionAnimationController,
            curve: const Interval(0.5, 1.0, curve: Curves.easeOutQuad)));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<QuizQuestionsBloc>()
                ..add(QuizQuestionsEvent.getQuizQuestions(widget.quizId))),
          BlocProvider<QuizAnswerSubmissionCubit>(
            create: (BuildContext context) =>
                getIt<QuizAnswerSubmissionCubit>(),
          ),
        ],
        child: BlocBuilder<QuizQuestionsBloc, QuizQuestionsState>(
          builder: (context, state) {
            return state.map(
                initial: (value) => const ShimmerQuestionContainer(),
                loadInProgress: (value) => const ShimmerQuestionContainer(),
                loadSuccess: (value) {
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

    return BlocListener<QuizAnswerSubmissionCubit, QuizAnswerSubmissionState>(
      listener: (context, state) {
        state.map(
            initial: (value) => const SizedBox.shrink(),
            loadInProgress: (value) => EasyLoading.show(status: 'Loading...'),
            loadSuccess: (value) {
              EasyLoading.dismiss();
              _buildContext
                  .read<QuizQuestionsBloc>()
                  .add(const QuizQuestionsEvent.nextQuestion());
            },
            loadFailure: (value) {
              EasyLoading.dismiss();
              showErrorDialog(
                  context: context, message: value.message ?? 'Error');
            });
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
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
                onQuestionAnswered: (index) =>
                    handleQuestionAnswered(index, quizQuestions),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(bottom: 20.h, right: 30.w, left: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonCircle(
                      color: AppColors.primary,
                      onTap: () => _buildContext
                          .read<QuizQuestionsBloc>()
                          .add(const QuizQuestionsEvent.previousQuestion()),
                      child: const Icon(Icons.skip_previous,
                          color: AppColors.white),
                    ),
                    ButtonCircle(
                      color: AppColors.primary,
                      onTap: () => _buildContext
                          .read<QuizQuestionsBloc>()
                          .add(const QuizQuestionsEvent.nextQuestion()),
                      child:
                          const Icon(Icons.skip_next, color: AppColors.white),
                    )
                  ],
                ),
              ),
            ),
            buildTopMenu()
          ],
        ),
      ),
    );
  }

  void handleQuestionAnswered(int index, List<QuizQuestion>? quizQuestions) {
    debugPrint('currentQuestionIndex $currentQuestionIndex');
    debugPrint('questions length ${quizQuestions?.length}');
    _buildContext.read<QuizAnswerSubmissionCubit>().submitQuizAnswer(
        QuizSubmissionRequest(
            answerId: 13, questionId: 1, quizId: 1, userId: 1));
    if (index == quizQuestions?.length) {
      // Navigate to the "Done" screen
      AutoRouter.of(context).push(const RouteQuizResult());
    }
  }

  Widget buildTopMenu() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top * 1.2, left: 16.w),
        child: Row(
          children: [
            InkWell(
              onTap: showQuitPopup,
              child: Icon(
                Icons.cancel,
                color: AppColors.white,
                size: 30.w,
              ),
            )
          ],
        ),
      ),
    );
  }

  void showQuitPopup() {
    showDialog(
        context: context,
        builder: (context) {
          return CustomDialogConfirmation(
            title: 'Keluar dari Quiz',
            message: 'Apakah anda yakin ingin keluar dari Quiz?',
            positiveText: 'Ya',
            negativeText: 'Batal',
            actionNegative: () {
              Navigator.pop(context);
            },
            actionPositiveButton: () async {
              Navigator.of(context).pop();
              AutoRouter.of(context).pop();
            },
          );
        });
  }
}
