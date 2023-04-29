import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class PageLessonList extends StatefulWidget {
  const PageLessonList({super.key});

  @override
  State<PageLessonList> createState() => _PageLessonListState();
}

class _PageLessonListState extends State<PageLessonList> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(appBarTitle: 'Materi', child: Container());
  }
}
