// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_answer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizAnswerDto _$$_QuizAnswerDtoFromJson(Map<String, dynamic> json) =>
    _$_QuizAnswerDto(
      id: json['id'] as int?,
      questionId: json['question_id'] as int?,
      answer: json['answer'] as String?,
      isCorrect: json['is_correct'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_QuizAnswerDtoToJson(_$_QuizAnswerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question_id': instance.questionId,
      'answer': instance.answer,
      'is_correct': instance.isCorrect,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
