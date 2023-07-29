import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/analytics/entities/answer_analytic.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';

part 'answer_analytic_dto.freezed.dart';

part 'answer_analytic_dto.g.dart';

@freezed
class AnswerAnalyticDto with _$AnswerAnalyticDto {
  const AnswerAnalyticDto._();
  const factory AnswerAnalyticDto(
      {@JsonKey(name: 'quiz_id') int? quizId,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'correct_answers') int? correctAnswers,
      @JsonKey(name: 'correct_answers_percentage')
      double? correctAnswersPercentage}) = _AnswerAnalyticDto;

  factory AnswerAnalyticDto.fromDomain(AnswerAnalytic? answerAnalytic) {
    return AnswerAnalyticDto(
      quizId: answerAnalytic?.quizId,
      totalQuestions: answerAnalytic?.totalQuestions,
      correctAnswers: answerAnalytic?.correctAnswers,
      correctAnswersPercentage: answerAnalytic?.correctAnswersPercentage,
    );
  }

  AnswerAnalytic toDomain() {
    return AnswerAnalytic(
      quizId: quizId,
      totalQuestions: totalQuestions,
      correctAnswers: correctAnswers,
      correctAnswersPercentage: correctAnswersPercentage,
    );
  }

  factory AnswerAnalyticDto.fromJson(Map<String, Object?> json) =>
      _$AnswerAnalyticDtoFromJson(json);

  static List<AnswerAnalytic> fromJsonList(List<dynamic> list) {
    List<AnswerAnalytic> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(AnswerAnalyticDto.fromJson(object as Map<String, Object?>)
            .toDomain());
      }
    }
    return result;
  }
}
