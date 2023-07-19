// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_submission_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizSubmissionDto _$$_QuizSubmissionDtoFromJson(Map<String, dynamic> json) =>
    _$_QuizSubmissionDto(
      id: json['id'] as int?,
      userId: json['user_d'] as int?,
      quizId: json['quiz_id'] as int?,
      score: json['score'] as int?,
      correctAnswer: json['correct_answer'] as int?,
      incorrectAnswer: json['incorrect_answer'] as int?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_QuizSubmissionDtoToJson(
        _$_QuizSubmissionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_d': instance.userId,
      'quiz_id': instance.quizId,
      'score': instance.score,
      'correct_answer': instance.correctAnswer,
      'incorrect_answer': instance.incorrectAnswer,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
