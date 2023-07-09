// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_podcast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningPodcastDto _$$_LearningPodcastDtoFromJson(
        Map<String, dynamic> json) =>
    _$_LearningPodcastDto(
      id: json['id'] as int?,
      materialId: json['material_id'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_LearningPodcastDtoToJson(
        _$_LearningPodcastDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'material_id': instance.materialId,
      'title': instance.title,
      'url': instance.url,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
