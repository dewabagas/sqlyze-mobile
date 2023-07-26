import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PageDiscussion extends StatefulWidget {
  const PageDiscussion({super.key});

  @override
  State<PageDiscussion> createState() => _PageDiscussionState();
}

class _PageDiscussionState extends State<PageDiscussion> {
  late final WebViewController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
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
      ..loadRequest(Uri.parse(
          'https://github.com/dewabagas/sqlyze-discussion/discussions'));
  }

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      appBarTitle: 'Discussion',
      child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
          child: WebViewWidget(controller: controller)),
    );
  }
}
