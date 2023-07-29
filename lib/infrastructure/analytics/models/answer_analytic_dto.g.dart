// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_analytic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerAnalyticDto _$$_AnswerAnalyticDtoFromJson(Map<String, dynamic> json) =>
    _$_AnswerAnalyticDto(
      quizId: json['quiz_id'] as int?,
      totalQuestions: json['total_questions'] as int?,
      correctAnswers: json['correct_answers'] as int?,
      correctAnswersPercentage:
          (json['correct_answers_percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AnswerAnalyticDtoToJson(
        _$_AnswerAnalyticDto instance) =>
    <String, dynamic>{
      'quiz_id': instance.quizId,
      'total_questions': instance.totalQuestions,
      'correct_answers': instance.correctAnswers,
      'correct_answers_percentage': instance.correctAnswersPercentage,
    };
