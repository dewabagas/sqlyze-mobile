import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class PageChapterDetail extends StatefulWidget {
  const PageChapterDetail({super.key});

  @override
  State<PageChapterDetail> createState() => _PageChapterDetailState();
}

class _PageChapterDetailState extends State<PageChapterDetail> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'Data Definition Language', child: Container());
  }
}
