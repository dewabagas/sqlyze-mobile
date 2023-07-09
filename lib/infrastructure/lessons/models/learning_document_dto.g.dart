// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_document_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningDocumentDto _$$_LearningDocumentDtoFromJson(
        Map<String, dynamic> json) =>
    _$_LearningDocumentDto(
      id: json['id'] as int?,
      materialId: json['material_id'] as int?,
      title: json['title'] as String?,
      documentType: json['document_type'] as String?,
      url: json['url'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_LearningDocumentDtoToJson(
        _$_LearningDocumentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'material_id': instance.materialId,
      'title': instance.title,
      'document_type': instance.documentType,
      'url': instance.url,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
