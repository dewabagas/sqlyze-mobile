import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_analytic.freezed.dart';

@freezed
class AnswerAnalytic with _$AnswerAnalytic {
  factory AnswerAnalytic({
    int? quizId,
    int? totalQuestions,
    int? correctAnswers,
    double? correctAnswersPercentage,
  }) = _AnswerAnalytic;
}
