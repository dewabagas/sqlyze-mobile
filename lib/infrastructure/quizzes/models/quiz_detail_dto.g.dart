// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizDetailDto _$$_QuizDetailDtoFromJson(Map<String, dynamic> json) =>
    _$_QuizDetailDto(
      id: json['id'] as int?,
      materialId: json['material_id'] as int?,
      title: json['title'] as String?,
      isFinalExam: json['is_final_exam'] as bool?,
      duration: json['duration'] as String?,
      passingScore: json['passing_score'] as int?,
      questionCount: json['question_count'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_QuizDetailDtoToJson(_$_QuizDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'material_id': instance.materialId,
      'title': instance.title,
      'is_final_exam': instance.isFinalExam,
      'duration': instance.duration,
      'passing_score': instance.passingScore,
      'question_count': instance.questionCount,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
