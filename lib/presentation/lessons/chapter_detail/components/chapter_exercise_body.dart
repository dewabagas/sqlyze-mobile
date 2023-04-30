import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChapterExerciseBody extends StatefulWidget {
  const ChapterExerciseBody({super.key});

  @override
  State<ChapterExerciseBody> createState() => _ChapterExerciseBodyState();
}

class _ChapterExerciseBodyState extends State<ChapterExerciseBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text('Pengenalan Data Definition Language')],
      ),
    );
  }
}
