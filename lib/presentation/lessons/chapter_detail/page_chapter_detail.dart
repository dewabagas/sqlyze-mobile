import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'package:sqlyze/application/lessons/lesson_detail_bloc/lesson_detail_bloc.dart';
import 'package:sqlyze/application/quizzes/quiz_detail_bloc/quiz_detail_bloc.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/locator.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/chapter_detail_body.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/components/shimmer_chapter_detail.dart';
import 'package:sqlyze/presentation/shared/widgets/errors/error_page.dart';

class PageChapterDetail extends StatefulWidget {
  final int materialId;
  const PageChapterDetail({super.key, required this.materialId});

  @override
  State<PageChapterDetail> createState() => _PageChapterDetailState();
}

class _PageChapterDetailState extends State<PageChapterDetail> {
  final Mixpanel mixPanel = locator.get();
  @override
  void initState() {
    mixPanel.track('Lesson Detail');
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<LessonDetailBloc>()
                ..add(LessonDetailEvent.getLessonDetail(widget.materialId))),
          BlocProvider(
              create: (context) => getIt<QuizDetailBloc>()
                ..add(QuizDetailEvent.getQuizByMaterialId(widget.materialId))),
        ],
        child: BlocBuilder<LessonDetailBloc, LessonDetailState>(
          builder: (context, state) {
            return state.map(
                initial: (value) => const ShimmerChapterDetail(),
                loadInProgress: (value) => const ShimmerChapterDetail(),
                loadSuccess: (value) {
                  mixPanel.registerSuperProperties(
                    {'Lesson Name': value.lessonDetail?.title},
                  );
                  return ChapterDetailBody(lessonDetail: value.lessonDetail!);
                },
                loadFailure: (value) {
                  return ErrorPage(message: value.message);
                });
          },
        ));
  }
}
