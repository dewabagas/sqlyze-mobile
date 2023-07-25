import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/infrastructure/lessons/models/learning_document_dto.dart';
import 'package:sqlyze/infrastructure/lessons/models/learning_podcast_dto.dart';
import 'package:sqlyze/infrastructure/lessons/models/learning_presentation_dto.dart';
import 'package:sqlyze/infrastructure/lessons/models/learning_step_dto.dart';

import 'learning_video_dto.dart';

part 'lesson_detail_dto.freezed.dart';

part 'lesson_detail_dto.g.dart';

@freezed
class LessonDetailDto with _$LessonDetailDto {
  const LessonDetailDto._();
  const factory LessonDetailDto({
    int? id,
    String? title,
    String? description,
    @JsonKey(name: 'material_type') int? materialType,
    @JsonKey(name: 'is_unlocked') bool? isUnlocked,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    LearningVideoDto? video,
    LearningPodcastDto? podcast,
    @JsonKey(name: 'learning_document') LearningDocumentDto? learningDocument,
    @JsonKey(name: 'learning_presentation')
    LearningPresentationDto? learningPresentation,
    @JsonKey(name: 'learning_steps') List<LearningStepDto>? learningSteps,
  }) = _LessonDetailDto;

  factory LessonDetailDto.fromDomain(LessonDetail? lessonDetail) {
    return LessonDetailDto(
      id: lessonDetail?.id,
      title: lessonDetail?.title,
      description: lessonDetail?.description,
      materialType: lessonDetail?.materialType,
      isUnlocked: lessonDetail?.isUnlocked,
      createdAt: lessonDetail?.createdAt,
      updatedAt: lessonDetail?.updatedAt,
      video: LearningVideoDto.fromDomain(lessonDetail?.video),
      podcast: LearningPodcastDto.fromDomain(lessonDetail?.podcast),
      learningDocument:
          LearningDocumentDto.fromDomain(lessonDetail?.learningDocument),
      learningPresentation: LearningPresentationDto.fromDomain(
          lessonDetail?.learningPresentation),
      learningSteps: lessonDetail?.learningSteps
          ?.map((learningStep) => LearningStepDto.fromDomain(learningStep))
          .toList(),
    );
  }

  LessonDetail toDomain() {
    return LessonDetail(
      id: id,
      title: title,
      description: description,
      materialType: materialType,
      isUnlocked: isUnlocked,
      createdAt: createdAt,
      updatedAt: updatedAt,
      video: video?.toDomain(),
      podcast: podcast?.toDomain(),
      learningDocument: learningDocument?.toDomain(),
      learningPresentation: learningPresentation?.toDomain(),
      learningSteps: learningSteps
          ?.map((learningStep) => learningStep.toDomain())
          .toList(),
    );
  }

  factory LessonDetailDto.fromJson(Map<String, Object?> json) =>
      _$LessonDetailDtoFromJson(json);

  static List<LessonDetail> fromJsonList(List<dynamic> list) {
    List<LessonDetail> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(LessonDetailDto.fromJson(object as Map<String, Object?>)
            .toDomain());
      }
    }
    return result;
  }
}
