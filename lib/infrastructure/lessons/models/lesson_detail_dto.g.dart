// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonDetailDto _$$_LessonDetailDtoFromJson(Map<String, dynamic> json) =>
    _$_LessonDetailDto(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      materialType: json['material_type'] as int?,
      isLocked: json['is_locked'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      video: json['video'] == null
          ? null
          : LearningVideoDto.fromJson(json['video'] as Map<String, dynamic>),
      podcast: json['podcast'] == null
          ? null
          : LearningPodcastDto.fromJson(
              json['podcast'] as Map<String, dynamic>),
      learningDocument: json['learning_document'] == null
          ? null
          : LearningDocumentDto.fromJson(
              json['learning_document'] as Map<String, dynamic>),
      learningPresentation: json['learning_presentation'] == null
          ? null
          : LearningPresentationDto.fromJson(
              json['learning_presentation'] as Map<String, dynamic>),
      learningSteps: (json['learning_steps'] as List<dynamic>?)
          ?.map((e) => LearningStepDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LessonDetailDtoToJson(_$_LessonDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'material_type': instance.materialType,
      'is_locked': instance.isLocked,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'video': instance.video,
      'podcast': instance.podcast,
      'learning_document': instance.learningDocument,
      'learning_presentation': instance.learningPresentation,
      'learning_steps': instance.learningSteps,
    };
