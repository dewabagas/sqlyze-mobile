import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class TabStudentPlayground extends StatefulWidget {
  const TabStudentPlayground({super.key});

  @override
  State<TabStudentPlayground> createState() => _TabStudentPlaygroundState();
}

class _TabStudentPlaygroundState extends State<TabStudentPlayground> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(child: Container());
  }
}
