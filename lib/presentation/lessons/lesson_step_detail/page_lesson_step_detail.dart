import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/others/show_dialog.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/loop_page_view/loop_page_view.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:story/story_page_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PageLessonStepDetail extends StatefulWidget {
  final LessonDetail lessonDetail;
  const PageLessonStepDetail({super.key, required this.lessonDetail});

  @override
  State<PageLessonStepDetail> createState() => _PageLessonStepDetailState();
}

class _PageLessonStepDetailState extends State<PageLessonStepDetail>
    with AutomaticKeepAliveClientMixin {
  late ValueNotifier<IndicatorAnimationCommand> indicatorAnimationController;
  final Completer<WebViewController> webController =
      Completer<WebViewController>();
  final GlobalKey webViewKey = GlobalKey();
  WebViewController? controller;
  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
  };
  final LoopPageController pageController = LoopPageController(
      scrollMode: LoopScrollMode.shortest,
      activationMode: LoopActivationMode.immediate);

  ValueNotifier loadingProgress = ValueNotifier<dynamic>(0.0);
  CarouselController buttonCarouselController = CarouselController();
  int currentIndex = 0;

  double webViewHeight = 1;
  String? htmlData;
  List<WebViewController> controllers = [];
  List<ScreenshotController> screenshotControllers = [];

  @override
  void initState() {
    indicatorAnimationController = ValueNotifier<IndicatorAnimationCommand>(
        IndicatorAnimationCommand.pause);
    loadingProgress = ValueNotifier<dynamic>(0.0);

    for (var i = 0; i < widget.lessonDetail.learningSteps!.length; i++) {
      var screenshotController = ScreenshotController();
      var controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              log('progress $progress');
              loadingProgress.value = progress.toDouble();
            },
            onPageStarted: (String url) {},
            onPageFinished: (String url) {},
            onWebResourceError: (WebResourceError error) {},
            onNavigationRequest: (NavigationRequest request) {
              if (request.url.startsWith('https://www.youtube.com/')) {
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(Uri.parse(widget.lessonDetail.learningSteps![i].url!));
      controllers.add(controller);
      screenshotControllers.add(screenshotController);
    }

    super.initState();
  }

  @override
  void dispose() {
    indicatorAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final LessonDetail lessonDetail = widget.lessonDetail;

    return PageDecorationTop(
      appBarTitle: 'SQLyze',
      appBarActions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: InkWell(
            onTap: () async {
              try {
                final image = await screenshotControllers[currentIndex].capture();
                final directory =
                    (await getApplicationDocumentsDirectory()).path;

                String fileName =
                    DateTime.now().microsecondsSinceEpoch.toString();
                File file = await File("$directory/$fileName.png").create();
                await file.writeAsBytes(image!.buffer.asUint8List());
                await Share.shareFiles(
                  [file.path],
                  text: '${widget.lessonDetail.learningSteps![currentIndex].title}',
                );
              } catch (e) {
                showErrorDialog(context: context, message: e.toString());
              }
            },
            child: const Icon(Icons.share_rounded),
          ),
        )
      ],
      child: Stack(
        children: [
          LoopPageView.builder(
            controller: pageController,
            itemCount: lessonDetail.learningSteps!.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              final lessonStep = lessonDetail.learningSteps![index];
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
                width: screenWidth,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: lessonDetail.learningSteps!
                            .asMap()
                            .entries
                            .map((entry) {
                          return Expanded(
                            child: GestureDetector(
                              onTap: () => buttonCarouselController
                                  .animateToPage(entry.key),
                              child: Container(
                                width: currentIndex == entry.key ? 43.w : 7.w,
                                height: 7.w,
                                margin: EdgeInsets.symmetric(horizontal: 3.w),
                                decoration: BoxDecoration(
                                  gradient: currentIndex >= entry.key
                                      ? const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            AppColors.primary,
                                            AppColors.primary,
                                            AppColors.secondary
                                          ],
                                        )
                                      : const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            AppColors.lightGrey5,
                                            AppColors.lightGrey5
                                          ],
                                        ),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        child: Screenshot(
                          controller: screenshotControllers[index],
                          child: WebViewWidget(
                            gestureRecognizers: gestureRecognizers,
                            controller: controllers[index],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 70.h)
                  ],
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 8,
                      color: Colors.grey.shade200)
                ],
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                ),
              ),
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, bottom: 20.h, top: 10.h),
              child: Row(
                children: [
                  Expanded(
                    child: ButtonPrimary(
                      height: 30.h,
                      title: 'Prev',
                      onPressed: () {
                        setState(() {
                          currentIndex = currentIndex - 1;
                        });
                        pageController.animateToPage(currentIndex,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: ButtonGradient(
                      height: 30.h,
                      title:
                          currentIndex == lessonDetail.learningSteps!.length - 1
                              ? 'Selesai'
                              : 'Next',
                      onPressed: () {
                        if (currentIndex <
                            lessonDetail.learningSteps!.length - 1) {
                          currentIndex = currentIndex + 1;
                          pageController.animateToPage(currentIndex,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        } else {
                          AutoRouter.of(context).pop();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
