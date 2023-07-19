// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_submission_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizSubmissionRequest _$$_QuizSubmissionRequestFromJson(
        Map<String, dynamic> json) =>
    _$_QuizSubmissionRequest(
      quizId: json['quiz_id'] as int?,
      userId: json['user_id'] as int?,
      questionId: json['question_id'] as int?,
      answerId: json['answer_id'] as int?,
    );

Map<String, dynamic> _$$_QuizSubmissionRequestToJson(
        _$_QuizSubmissionRequest instance) =>
    <String, dynamic>{
      'quiz_id': instance.quizId,
      'user_id': instance.userId,
      'question_id': instance.questionId,
      'answer_id': instance.answerId,
    };
