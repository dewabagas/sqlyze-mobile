import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/infrastructure/analytics/models/answer_analytic_dto.dart';

part 'learning_analytic_dto.freezed.dart';

part 'learning_analytic_dto.g.dart';

@freezed
class LearningAnalyticDto with _$LearningAnalyticDto {
  const LearningAnalyticDto._();
  const factory LearningAnalyticDto({
    int? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'total_quizzes_taken') int? totalQuizzesTaken,
    @JsonKey(name: 'total_score') int? totalScore,
    @JsonKey(name: 'total_correct_answers') int? totalCorrectAnswers,
    @JsonKey(name: 'total_incorrect_answers') int? totalIncorrectAnswers,
    @JsonKey(name: 'total_duration') String? totalDuration,
    @JsonKey(name: 'total_quizzes') int? totalQuizzes,
    @JsonKey(name: 'total_questions') int? totalQuestions,
    @JsonKey(name: 'quiz_percentage') int? quizPercentage,
    @JsonKey(name: 'performance_percentage') double? performancePercentage,
    @JsonKey(name: 'answers_per_quiz_attempt')
    List<AnswerAnalyticDto>? answersPerQuizAttempt,
  }) = _LearningAnalyticDto;

  factory LearningAnalyticDto.fromDomain(LearningAnalytic? learningAnalytic) {
    return LearningAnalyticDto(
      id: learningAnalytic?.id,
      userId: learningAnalytic?.userId,
      totalQuizzesTaken: learningAnalytic?.totalQuizzesTaken,
      totalScore: learningAnalytic?.totalScore,
      totalCorrectAnswers: learningAnalytic?.totalCorrectAnswers,
      totalIncorrectAnswers: learningAnalytic?.totalIncorrectAnswers,
      totalDuration: learningAnalytic?.totalDuration,
      totalQuizzes: learningAnalytic?.totalQuizzes,
      totalQuestions: learningAnalytic?.totalQuestions,
      quizPercentage: learningAnalytic?.quizPercentage,
      performancePercentage: learningAnalytic?.performancePercentage,
      answersPerQuizAttempt: learningAnalytic?.answersPerQuizAttempt
          ?.map((value) => AnswerAnalyticDto.fromDomain(value))
          .toList(),
    );
  }

  LearningAnalytic toDomain() {
    return LearningAnalytic(
      id: id,
      userId: userId,
      totalQuizzesTaken: totalQuizzesTaken,
      totalScore: totalScore,
      totalCorrectAnswers: totalCorrectAnswers,
      totalIncorrectAnswers: totalIncorrectAnswers,
      totalQuizzes: totalQuizzes,
      totalQuestions: totalQuestions,
      quizPercentage: quizPercentage,
      performancePercentage: performancePercentage,
      answersPerQuizAttempt:
          answersPerQuizAttempt?.map((value) => value.toDomain()).toList(),
    );
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
