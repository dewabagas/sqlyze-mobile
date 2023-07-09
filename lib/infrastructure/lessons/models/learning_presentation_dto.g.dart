// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_presentation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningPresentationDto _$$_LearningPresentationDtoFromJson(
        Map<String, dynamic> json) =>
    _$_LearningPresentationDto(
      id: json['id'] as int?,
      materialId: json['material_id'] as int?,
      title: json['title'] as String?,
      fileUrl: json['file_url'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_LearningPresentationDtoToJson(
        _$_LearningPresentationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'material_id': instance.materialId,
      'title': instance.title,
      'file_url': instance.fileUrl,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
