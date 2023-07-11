import 'package:flutter/material.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';

class PageLessonStepDetail extends StatefulWidget {
  final LessonDetail lessonDetail;
  const PageLessonStepDetail({super.key, required this.lessonDetail});

  @override
  State<PageLessonStepDetail> createState() => _PageLessonStepDetailState();
}

class _PageLessonStepDetailState extends State<PageLessonStepDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
