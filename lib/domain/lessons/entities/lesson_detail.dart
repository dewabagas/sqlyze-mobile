import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/lessons/entities/learning_document.dart';
import 'package:sqlyze/domain/lessons/entities/learning_podcast.dart';
import 'package:sqlyze/domain/lessons/entities/learning_presentation.dart';
import 'package:sqlyze/domain/lessons/entities/learning_step.dart';
import 'package:sqlyze/domain/lessons/entities/learning_video.dart';

part 'lesson_detail.freezed.dart';

@freezed
class LessonDetail with _$LessonDetail {
  factory LessonDetail(
      {int? id,
      String? title,
      String? description,
      int? materialType,
      bool? isLocked,
      String? createdAt,
      String? updatedAt,
      LearningVideo? video,
      LearningPodcast? podcast,
      LearningDocument? learningDocument,
      LearningPresentation? learningPresentation,
      List<LearningStep>? learningSteps}) = _LessonDetail;
}
