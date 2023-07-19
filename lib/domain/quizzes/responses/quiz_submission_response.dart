import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_submission_response.freezed.dart';

@freezed
class QuizSubmissionResponse with _$QuizSubmissionResponse {
  factory QuizSubmissionResponse({
    int? id,
    int? userId,
    int? quizId,
    int? score,
    int? correctAnswer,
    int? incorrectAnswer,
    String? startTime,
    String? endTime,
    String? createdAt,
    String? updatedAt,
  }) = _QuizSubmissionResponse;
}
