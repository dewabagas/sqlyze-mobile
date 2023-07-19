import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_answer.dart';
import 'package:sqlyze/domain/quizzes/responses/quiz_submission_response.dart';

part 'quiz_submission_dto.freezed.dart';

part 'quiz_submission_dto.g.dart';

@freezed
class QuizSubmissionDto with _$QuizSubmissionDto {
  const QuizSubmissionDto._();
  const factory QuizSubmissionDto({
    int? id,
    @JsonKey(name: 'user_d') int? userId,
    @JsonKey(name: 'quiz_id') int? quizId,
    int? score,
    @JsonKey(name: 'correct_answer') int? correctAnswer,
    @JsonKey(name: 'incorrect_answer') int? incorrectAnswer,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    String? createdAt,
    String? updatedAt,
  }) = _QuizSubmissionDto;

  factory QuizSubmissionDto.fromDomain(
      QuizSubmissionResponse? quizSubmissionResponse) {
    return QuizSubmissionDto(
        id: quizSubmissionResponse?.id,
        userId: quizSubmissionResponse?.userId,
        quizId: quizSubmissionResponse?.quizId,
        score: quizSubmissionResponse?.score,
        correctAnswer: quizSubmissionResponse?.correctAnswer,
        incorrectAnswer: quizSubmissionResponse?.incorrectAnswer,
        startTime: quizSubmissionResponse?.startTime,
        endTime: quizSubmissionResponse?.endTime,
        createdAt: quizSubmissionResponse?.createdAt,
        updatedAt: quizSubmissionResponse?.updatedAt);
  }

  QuizSubmissionResponse toDomain() {
    return QuizSubmissionResponse(
        id: id,
        userId: userId,
        quizId: quizId,
        score: score,
        correctAnswer: correctAnswer,
        incorrectAnswer: incorrectAnswer,
        startTime: startTime,
        endTime: endTime,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  factory QuizSubmissionDto.fromJson(Map<String, Object?> json) =>
      _$QuizSubmissionDtoFromJson(json);

  static List<QuizSubmissionResponse> fromJsonList(List<dynamic> list) {
    List<QuizSubmissionResponse> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(QuizSubmissionDto.fromJson(object as Map<String, Object?>)
            .toDomain());
      }
    }
    return result;
  }
}
