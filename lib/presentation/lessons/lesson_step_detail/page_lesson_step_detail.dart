import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/shared/widgets/others/expandable_page_view/expandable_page_view.dart';
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

  double webViewHeight = 1;
  String? htmlData;
  List<WebViewController> controllers = [];

  @override
  void initState() {
    indicatorAnimationController = ValueNotifier<IndicatorAnimationCommand>(
        IndicatorAnimationCommand.pause);

    for (var i = 0; i < widget.lessonDetail.learningSteps!.length; i++) {
      var controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              // Update loading bar.
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
      child: LoopPageView.builder(
        itemCount: lessonDetail.learningSteps!.length,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          final lessonStep = lessonDetail.learningSteps![index];
          log('lessonStep : ${lessonStep.url}');
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
            width: screenWidth,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.r),
              child: WebViewWidget(
                gestureRecognizers: gestureRecognizers,
                controller: controllers[index],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
