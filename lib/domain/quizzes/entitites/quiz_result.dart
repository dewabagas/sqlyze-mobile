import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_result.freezed.dart';

@freezed
class QuizResult with _$QuizResult {
  factory QuizResult({
    int? quizId,
    String? quizName,
    int? userId,
    String? fullName,
    int? totalQuestions,
    int? correctAnswers,
    int? incorrectAnswers,
    int? score,
    String? startTime,
    String? endTime,
    int? totalDuration,
  }) = _QuizResult;
}
