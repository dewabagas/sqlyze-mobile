import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/cards/card_gradient.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:sqlyze/presentation/lessons/chapter_detail/components/podcast_player.dart';
import 'package:sqlyze/presentation/shared/widgets/cards/card_expansion.dart';
import 'package:sqlyze/presentation/shared/widgets/others/pdf_viewer.dart';

class ChapterLearnBody extends StatefulWidget {
  final LessonDetail lessonDetail;
  const ChapterLearnBody({super.key, required this.lessonDetail});

  @override
  State<ChapterLearnBody> createState() => _ChapterLearnBodyState();
}

class _ChapterLearnBodyState extends State<ChapterLearnBody> {
  final Completer<WebViewController> webController =
      Completer<WebViewController>();
  final GlobalKey webViewKey = GlobalKey();
  WebViewController? controller;

  double webViewHeight = 1;
  String? htmlData;

  Future<String> loadAsset() async {
    return await rootBundle
        .loadString('assets/htmls/ddl_1_create_statement.html');
  }

  Future<void> _loadHtmlFromAssets(String file) async {
    webController.future.then((controller) async {
      String fileText = await rootBundle.loadString(file);
      String completeHtml = await addFontToHtml(
          fileText, "assets/fonts/Poppins-Regular.ttf", "font/ttf");
      String theURI = Uri.dataFromString(completeHtml,
              mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
          .toString();

      controller.loadUrl(theURI);
    });
  }

  String getFontUri(ByteData data, String mime) {
    final buffer = data.buffer;
    return Uri.dataFromBytes(
            buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
            mimeType: mime)
        .toString();
  }

  Future<String> addFontToHtml(
      String htmlContent, String fontAssetPath, String fontMime) async {
    final fontData = await rootBundle.load(fontAssetPath);
    final fontUri = getFontUri(fontData, fontMime).toString();
    final fontCss =
        '@font-face { font-family: customFont; src: url($fontUri); } * { font-family: customFont; }';
    return '<style>$fontCss</style>$htmlContent';
  }

  @override
  Widget build(BuildContext context) {
    final LessonDetail lessonDetail = widget.lessonDetail;
    return Container(
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(lessonDetail.title ?? 'Title', style: TextStyles.labelMedium),
          SizedBox(height: 5.h),
          Text(
            lessonDetail.description ?? 'Description',
            style: TextStyles.bodySmall.copyWith(
                color: AppColors.paragraphColor, fontWeight: FontWeight.w400),
            textAlign: TextAlign.justify,
          ),
          // Container(
          //   height: webViewHeight,
          //   child: WebView(
          //     initialUrl:
          //         "http://10.0.2.2:3000/htmls/ddl_1_pengenalan_ddl.html",
          //     backgroundColor: Colors.white,
          //     zoomEnabled: true,
          //     javascriptMode: JavascriptMode.unrestricted,
          //     onPageFinished: (_) {
          //       updateHeight();
          //     },
          //     onWebViewCreated: (WebViewController webViewController) {
          //       webController.complete(webViewController);
          //       controller = webViewController;
          //     },
          //   ),
          // ),
          SizedBox(height: 10.h),
          CardGradient(),
          SizedBox(height: 16.h),
          CardExpansion(
            title: 'Modul Materi',
            children: [
              Container(
                height: 500.h,
                child: PDFViewer(
                  url:
                      'https://drive.google.com/uc?id=1dQflASwaosA_R2oOfTvsimoB1Rxtvgra',
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          CardExpansion(
            title: 'PPT',
            children: [
              Container(
                height: 250.h,
                child: PDFViewer(
                  url:
                      'https://drive.google.com/uc?id=1NcV5Pq0wje6xTO1taiWTGjqIP-uMXGO6',
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          CardExpansion(title: 'Podcast', children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                child: PodcastPlayer(
                    title: 'Data Definition Language',
                    audioUrl:
                        'https://d3ctxlq1ktw2nl.cloudfront.net/staging/2023-4-1/326982564-22050-1-b3f2b4a2326c3.m4a'))
          ])
        ],
      ),
    );
  }

  void updateHeight() async {
    double height = double.parse(await controller!.runJavascriptReturningResult(
        'document.documentElement.scrollHeight;'));
    if (webViewHeight != height) {
      setState(() {
        webViewHeight = height;
      });
    }
  }

  bool get wantKeepAlive => true;
}
