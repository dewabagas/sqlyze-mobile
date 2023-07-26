import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class PageDiscussion extends StatefulWidget {
  const PageDiscussion({super.key});

  @override
  State<PageDiscussion> createState() => _PageDiscussionState();
}

class _PageDiscussionState extends State<PageDiscussion> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(appBarTitle: 'Discussion', child: Container());
  }
}
