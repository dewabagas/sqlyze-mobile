import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sqlyze/application/quizzes/quiz_result_bloc/quiz_result_bloc.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/domain/core/utils/ui_utils.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_result.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/quizzes/quiz/components/radial_percentage_result_container.dart';
import 'package:sqlyze/presentation/quizzes/quiz_result/components/shimmer_quiz_result.dart';
import 'package:sqlyze/presentation/quizzes/quiz_result/quiz_result_body.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/errors/error_page.dart';
import 'package:sqlyze/presentation/shared/widgets/images/image_circle.dart';
import 'package:sqlyze/presentation/shared/widgets/others/show_dialog.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

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
    return QuizResultBody(quizId: widget.quizId, userId: userId);
  }
}
