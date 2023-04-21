import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class TabStudentCourses extends StatefulWidget {
  const TabStudentCourses({super.key});

  @override
  State<TabStudentCourses> createState() => _TabStudentCoursesState();
}

class _TabStudentCoursesState extends State<TabStudentCourses> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'Learning Analysis', child: Container());
  }
}
