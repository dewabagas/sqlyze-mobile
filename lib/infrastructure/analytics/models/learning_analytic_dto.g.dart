// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_analytic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningAnalyticDto _$$_LearningAnalyticDtoFromJson(
        Map<String, dynamic> json) =>
    _$_LearningAnalyticDto(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      totalQuizzesTaken: json['total_quizzes_taken'] as int?,
      totalScore: json['total_score'] as int?,
      totalCorrectAnswers: json['total_correct_answers'] as int?,
      totalIncorrectAnswers: json['total_incorrect_answers'] as int?,
      totalDuration: json['total_duration'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_LearningAnalyticDtoToJson(
        _$_LearningAnalyticDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'total_quizzes_taken': instance.totalQuizzesTaken,
      'total_score': instance.totalScore,
      'total_correct_answers': instance.totalCorrectAnswers,
      'total_incorrect_answers': instance.totalIncorrectAnswers,
      'total_duration': instance.totalDuration,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
