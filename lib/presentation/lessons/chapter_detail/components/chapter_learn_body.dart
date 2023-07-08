import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html_iframe/flutter_html_iframe.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:html2md/html2md.dart' as html2md;
import 'package:webview_flutter/webview_flutter.dart';

import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/components/podcast_player.dart';
import 'package:sqlyze/presentation/shared/widgets/cards/card_expansion.dart';
import 'package:sqlyze/presentation/shared/widgets/others/custom_expansion_tile.dart';
import 'package:sqlyze/presentation/shared/widgets/others/pdf_viewer.dart';

class ChapterLearnBody extends StatefulWidget {
  const ChapterLearnBody({super.key});

  @override
  State<ChapterLearnBody> createState() => _ChapterLearnBodyState();
}

class _ChapterLearnBodyState extends State<ChapterLearnBody> {
  final Completer<WebViewController> webController =
      Completer<WebViewController>();
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
    // return Container(
    //   height: MediaQuery.of(context).size.height,
    //   child: FutureBuilder(
    //     future: _loadHtmlFromAssets('assets/htmls/ddl_1_create_statement.html'),
    //     builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
    //       if (snapshot.connectionState == ConnectionState.done) {
    //         return Padding(
    //           padding: EdgeInsets.only(
    //               left: 25.w, right: 25.w, top: 32.05.h, bottom: 5.h),
    //           child: Stack(
    //             children: [
    //               WebView(
    //                 backgroundColor: Colors.white,
    //                 zoomEnabled: true,
    //                 javascriptMode: JavascriptMode.unrestricted,
    //                 onWebViewCreated: (WebViewController webViewController) {
    //                   webController.complete(webViewController);
    //                 },
    //               ),
    //             ],
    //           ),
    //         );
    //       } else {
    //         return CircularProgressIndicator();
    //       }
    //     },
    //   ),
    // );

    return Container(
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: screenHeight,
              child: FutureBuilder(
                future: _loadHtmlFromAssets(
                    'assets/htmls/ddl_1_create_statement.html'),
                builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: 25.w, right: 25.w, top: 32.05.h, bottom: 5.h),
                      child: Stack(
                        children: [
                          WebView(
                            backgroundColor: Colors.white,
                            zoomEnabled: true,
                            javascriptMode: JavascriptMode.unrestricted,
                            onWebViewCreated:
                                (WebViewController webViewController) {
                              webController.complete(webViewController);
                            },
                          ),
                        ],
                      ),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ),
          ),
          // SizedBox(height: 10.h),
          // CardExpansion(
          //   title: 'Modul Materi',
          //   children: [
          //     Container(
          //       height: 500.h,
          //       child: PDFViewer(
          //         url:
          //             'https://drive.google.com/uc?id=1dQflASwaosA_R2oOfTvsimoB1Rxtvgra',
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(height: 10.h),
          // CardExpansion(
          //   title: 'PPT',
          //   children: [
          //     Container(
          //       height: 250.h,
          //       child: PDFViewer(
          //         url:
          //             'https://drive.google.com/uc?id=1NcV5Pq0wje6xTO1taiWTGjqIP-uMXGO6',
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(height: 10.h),
          // CardExpansion(title: 'Podcast', children: [
          //   Container(
          //       margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
          //       child: PodcastPlayer(
          //           title: 'Data Definition Language',
          //           audioUrl:
          //               'https://d3ctxlq1ktw2nl.cloudfront.net/staging/2023-4-1/326982564-22050-1-b3f2b4a2326c3.m4a'))
          // ])
        ],
      ),
    );
  }
}
