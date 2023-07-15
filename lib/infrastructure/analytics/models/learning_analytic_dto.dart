import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/domain/lessons/entities/learning_document.dart';

part 'learning_analytic_dto.freezed.dart';

part 'learning_analytic_dto.g.dart';

@freezed
class LearningAnalyticDto with _$LearningAnalyticDto {
  const LearningAnalyticDto._();
  const factory LearningAnalyticDto({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'total_quizzes_taken') int? totalQuizzesTaken,
    @JsonKey(name: 'total_score') int? totalScore,
    @JsonKey(name: 'total_correct_answers') int? totalCorrectAnswers,
    @JsonKey(name: 'total_incorrect_answers') int? totalIncorrectAnswers,
    @JsonKey(name: 'total_duration') String? totalDuration,
    String? createdAt,
    String? updatedAt,
  }) = _LearningAnalyticDto;

  factory LearningAnalyticDto.fromDomain(LearningAnalytic? learningAnalytic) {
    return LearningAnalyticDto(
        id: learningAnalytic?.id,
        userId: learningAnalytic?.userId,
        totalQuizzesTaken: learningAnalytic?.totalQuizzesTaken,
        totalScore: learningAnalytic?.totalScore,
        totalCorrectAnswers: learningAnalytic?.totalCorrectAnswers,
        totalIncorrectAnswers: learningAnalytic?.totalIncorrectAnswers,
        createdAt: learningAnalytic?.createdAt,
        updatedAt: learningAnalytic?.updatedAt);
  }

  LearningAnalytic toDomain() {
    return LearningAnalytic(
        id: id,
        userId: userId,
        totalQuizzesTaken: totalQuizzesTaken,
        totalScore: totalScore,
        totalCorrectAnswers: totalCorrectAnswers,
        totalIncorrectAnswers: totalIncorrectAnswers,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  factory LearningAnalyticDto.fromJson(Map<String, Object?> json) =>
      _$LearningAnalyticDtoFromJson(json);

  static List<LearningAnalytic> fromJsonList(List<dynamic> list) {
    List<LearningAnalytic> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(LearningAnalyticDto.fromJson(object as Map<String, Object?>)
            .toDomain());
      }
    }
    return result;
  }
}
