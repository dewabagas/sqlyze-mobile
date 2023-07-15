import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_answer.dart';

part 'quiz_answer_dto.freezed.dart';

part 'quiz_answer_dto.g.dart';

@freezed
class QuizAnswerDto with _$QuizAnswerDto {
  const QuizAnswerDto._();
  const factory QuizAnswerDto({
    int? id,
    @JsonKey(name: 'question_id') int? questionId,
    String? answer,
    @JsonKey(name: 'is_correct') bool? isCorrect,
    String? createdAt,
    String? updatedAt,
  }) = _QuizAnswerDto;

  factory QuizAnswerDto.fromDomain(QuizAnswer? quizAnswer) {
    return QuizAnswerDto(
        id: quizAnswer?.id,
        questionId: quizAnswer?.questionId,
        answer: quizAnswer?.answer,
        isCorrect: quizAnswer?.isCorrect,
        createdAt: quizAnswer?.createdAt,
        updatedAt: quizAnswer?.updatedAt);
  }

  QuizAnswer toDomain() {
    return QuizAnswer(
        id: id,
        questionId: questionId,
        answer: answer,
        isCorrect: isCorrect,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  factory QuizAnswerDto.fromJson(Map<String, Object?> json) =>
      _$QuizAnswerDtoFromJson(json);

  static List<QuizAnswer> fromJsonList(List<dynamic> list) {
    List<QuizAnswer> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(
            QuizAnswerDto.fromJson(object as Map<String, Object?>).toDomain());
      }
    }
    return result;
  }
}
