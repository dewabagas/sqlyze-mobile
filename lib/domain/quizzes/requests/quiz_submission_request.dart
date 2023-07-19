import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_submission_request.freezed.dart';
part 'quiz_submission_request.g.dart';

@freezed
class QuizSubmissionRequest with _$QuizSubmissionRequest {
  factory QuizSubmissionRequest({
    @JsonKey(name: 'quiz_id') int? quizId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'question_id') int? questionId,
    @JsonKey(name: 'answer_id') int? answerId,
  }) = _QuizSubmissionRequest;

  factory QuizSubmissionRequest.fromJson(Map<String, dynamic> json) =>
      _$QuizSubmissionRequestFromJson(json);
}
