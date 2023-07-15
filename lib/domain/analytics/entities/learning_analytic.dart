import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_analytic.freezed.dart';

@freezed
class LearningAnalytic with _$LearningAnalytic {
  factory LearningAnalytic({
    int? id,
    int? userId,
    int? totalQuizzesTaken,
    int? totalScore,
    int? totalCorrectAnswers,
    int? totalIncorrectAnswers,
    String? totalDuration,
    String? createdAt,
    String? updatedAt,
  }) = _LearningAnalytic;
}
