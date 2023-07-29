import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/analytics/entities/answer_analytic.dart';

part 'learning_analytic.freezed.dart';

@freezed
class LearningAnalytic with _$LearningAnalytic {
  factory LearningAnalytic({
    int? id,
    String? userId,
    int? totalQuizzesTaken,
    int? totalScore,
    int? totalCorrectAnswers,
    int? totalIncorrectAnswers,
    String? totalDuration,
    int? totalQuizzes,
    int? totalQuestions,
    int? quizPercentage,
    double? performancePercentage,
    List<AnswerAnalytic>? answersPerQuizAttempt,
  }) = _LearningAnalytic;
}
