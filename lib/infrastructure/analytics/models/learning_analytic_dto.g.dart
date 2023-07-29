// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_analytic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningAnalyticDto _$$_LearningAnalyticDtoFromJson(
        Map<String, dynamic> json) =>
    _$_LearningAnalyticDto(
      id: json['id'] as int?,
      userId: json['user_id'] as String?,
      totalQuizzesTaken: json['total_quizzes_taken'] as int?,
      totalScore: json['total_score'] as int?,
      totalCorrectAnswers: json['total_correct_answers'] as int?,
      totalIncorrectAnswers: json['total_incorrect_answers'] as int?,
      totalDuration: json['total_duration'] as String?,
      totalQuizzes: json['total_quizzes'] as int?,
      totalQuestions: json['total_questions'] as int?,
      quizPercentage: json['quiz_percentage'] as int?,
      performancePercentage:
          (json['performance_percentage'] as num?)?.toDouble(),
      answersPerQuizAttempt: (json['answers_per_quiz_attempt']
              as List<dynamic>?)
          ?.map((e) => AnswerAnalyticDto.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'total_quizzes': instance.totalQuizzes,
      'total_questions': instance.totalQuestions,
      'quiz_percentage': instance.quizPercentage,
      'performance_percentage': instance.performancePercentage,
      'answers_per_quiz_attempt': instance.answersPerQuizAttempt,
    };
