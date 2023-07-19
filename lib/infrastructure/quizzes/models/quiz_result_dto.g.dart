// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizResultDto _$$_QuizResultDtoFromJson(Map<String, dynamic> json) =>
    _$_QuizResultDto(
      quizId: json['quiz_id'] as int?,
      quizName: json['quiz_name'] as String?,
      userId: json['user_id'] as int?,
      fullName: json['full_name'] as String?,
      profileImageUrl: json['profile_image_url'] as String?,
      totalQuestions: json['total_questions'] as int?,
      correctAnswers: json['correct_answers'] as int?,
      incorrectAnswers: json['incorrect_answers'] as int?,
      score: json['score'] as int?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      totalDuration: json['total_duration'] as int?,
    );

Map<String, dynamic> _$$_QuizResultDtoToJson(_$_QuizResultDto instance) =>
    <String, dynamic>{
      'quiz_id': instance.quizId,
      'quiz_name': instance.quizName,
      'user_id': instance.userId,
      'full_name': instance.fullName,
      'profile_image_url': instance.profileImageUrl,
      'total_questions': instance.totalQuestions,
      'correct_answers': instance.correctAnswers,
      'incorrect_answers': instance.incorrectAnswers,
      'score': instance.score,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'total_duration': instance.totalDuration,
    };
