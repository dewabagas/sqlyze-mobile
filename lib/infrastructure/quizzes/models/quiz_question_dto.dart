import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_question.dart';
import 'package:sqlyze/infrastructure/quizzes/models/quiz_answer_dto.dart';

part 'quiz_question_dto.freezed.dart';

part 'quiz_question_dto.g.dart';

@freezed
class QuizQuestionDto with _$QuizQuestionDto {
  const QuizQuestionDto._();
  const factory QuizQuestionDto({
    int? id,
    @JsonKey(name: 'quiz_id') int? quizId,
    String? question,
    @JsonKey(name: 'question_type') String? questionType,
    @JsonKey(name: 'quiz_answers') List<QuizAnswerDto>? quizAnswers,
    String? createdAt,
    String? updatedAt,
  }) = _QuizQuestionDto;

  factory QuizQuestionDto.fromDomain(QuizQuestion? quizQuestion) {
    return QuizQuestionDto(
        id: quizQuestion?.id,
        quizId: quizQuestion?.quizId,
        question: quizQuestion?.question,
        questionType: quizQuestion?.questionType,
        quizAnswers: quizQuestion?.quizAnswers
            ?.map((quizAnswers) => QuizAnswerDto.fromDomain(quizAnswers))
            .toList(),
        createdAt: quizQuestion?.createdAt,
        updatedAt: quizQuestion?.updatedAt);
  }

  QuizQuestion toDomain() {
    return QuizQuestion(
        id: id,
        quizId: quizId,
        question: question,
        questionType: questionType,
        quizAnswers:
            quizAnswers?.map((quizAnswer) => quizAnswer.toDomain()).toList(),
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  factory QuizQuestionDto.fromJson(Map<String, Object?> json) =>
      _$QuizQuestionDtoFromJson(json);

  static List<QuizQuestion> fromJsonList(List<dynamic> list) {
    List<QuizQuestion> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(QuizQuestionDto.fromJson(object as Map<String, Object?>)
            .toDomain());
      }
    }
    return result;
  }
}
