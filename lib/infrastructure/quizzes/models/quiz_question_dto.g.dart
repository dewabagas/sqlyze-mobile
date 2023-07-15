// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_question_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizQuestionDto _$$_QuizQuestionDtoFromJson(Map<String, dynamic> json) =>
    _$_QuizQuestionDto(
      id: json['id'] as int?,
      quizId: json['quiz_id'] as int?,
      question: json['question'] as String?,
      questionType: json['question_type'] as String?,
      quizAnswers: (json['quiz_answers'] as List<dynamic>?)
          ?.map((e) => QuizAnswerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_QuizQuestionDtoToJson(_$_QuizQuestionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quiz_id': instance.quizId,
      'question': instance.question,
      'question_type': instance.questionType,
      'quiz_answers': instance.quizAnswers,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
