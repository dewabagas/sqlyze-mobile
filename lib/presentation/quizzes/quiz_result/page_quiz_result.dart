import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/presentation/quizzes/quiz_result/quiz_result_body.dart';

class PageQuizResult extends StatefulWidget {
  final int quizId;
  const PageQuizResult({super.key, required this.quizId});

  @override
  State<PageQuizResult> createState() => _PageQuizResultState();
}

class _PageQuizResultState extends State<PageQuizResult> {
  final ScreenshotController screenshotController = ScreenshotController();
  late int userId;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      getUserId();
    });
  }

  getUserId() async {
    int tempUserId =
        await getIntValuesPreference(key: PreferenceConstants.userId);
    setState(() {
      userId = tempUserId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return Future.value(false);
        },
        child: QuizResultBody(quizId: widget.quizId, userId: userId));
  }
}
