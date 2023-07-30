import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sqlyze/application/analytics/learning_analytic_bloc/learning_analytic_bloc.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/errors/error_page.dart';
import 'package:sqlyze/presentation/shared/widgets/others/expandable_page_view/expandable_page_view.dart';
import 'package:sqlyze/presentation/shared/widgets/others/show_dialog.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:sqlyze/presentation/student_dashboard/components/analytic_performance_body.dart';
import 'package:sqlyze/presentation/student_dashboard/components/analytic_progress_body.dart';
import 'package:sqlyze/presentation/student_dashboard/components/shimmer_analytics.dart';
import 'package:sqlyze/presentation/student_dashboard/components/tab_analytics.dart';

class AnalyticsBody extends StatefulWidget {
  final int userId;
  const AnalyticsBody({super.key, required this.userId});

  @override
  State<AnalyticsBody> createState() => _AnalyticsBodyState();
}

class _AnalyticsBodyState extends State<AnalyticsBody> {
  int touchedIndex = -1;
  int selectedIndex = 0;
  late PageController pageController;
  final ScreenshotController performanceScreenshotController =
      ScreenshotController();
  final ScreenshotController progressScreenshotController =
      ScreenshotController();
  final ScreenshotController screenshotController = ScreenshotController();

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LearningAnalyticBloc>(
      create: (context) => getIt<LearningAnalyticBloc>()
        ..add(LearningAnalyticEvent.getLearningAnalytic(widget.userId)),
      child: BlocBuilder<LearningAnalyticBloc, LearningAnalyticState>(
        builder: (context, state) {
          return state.map(
              initial: (value) => const ShimmerAnalytics(),
              loadInProgress: (value) => const ShimmerAnalytics(),
              loadSuccess: (value) {
                return buildAnalytic(value.learningAnalytic!);
              },
              loadFailure: (value) {
                if (value.message ==
                    'The requested information could not be found') {
                  return buildAnalyticEmpty();
                } else {
                  return ErrorPage(message: value.message);
                }
              });
        },
      ),
    );
  }

  Widget buildAnalyticEmpty() {
    return PageDecorationTop(
        hasBack: false,
        appBarTitle: 'SQLyze',
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIllustrations.illEmpty),
              SizedBox(height: 10.h),
              Text(
                'Anda belum menyelesaikan Materi, Yuk selesaikan dulu materi agar dapat melihat analisis.',
                style: TextStyles.bodySmall,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }

  Widget buildAnalytic(LearningAnalytic learningAnalytic) {
    return PageDecorationTop(
        appBarTitle: 'Analisis Belajar',
        hasBack: false,
        appBarActions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: InkWell(
              onTap: () async {
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
              },
              child: const Icon(Icons.share_rounded, color: AppColors.white),
            ),
          )
        ],
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: TabHeaderAnalytics(
                  selectedIndex: selectedIndex,
                  onValueChanged: (i) {
                    pageController.animateToPage(
                      i,
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.ease,
                    );
                    setState(() {
                      selectedIndex = i;
                    });
                  },
                ),
              ),
              SizedBox(height: 10.h),
              Screenshot(
                controller: screenshotController,
                child: ExpandablePageView(
                  dragStartBehavior: DragStartBehavior.start,
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  animateFirstPage: true,
                  onPageChanged: (pageIndex) {
                    setState(() {
                      selectedIndex = pageIndex;
                    });
                  },
                  children: [
                    AnalyticPerformanceBody(analyticsData: learningAnalytic),
                    AnalyticProgressBody(analyticsData: learningAnalytic)
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
