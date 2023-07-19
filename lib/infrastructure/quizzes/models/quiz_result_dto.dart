import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_detail.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_question.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_result.dart';
import 'package:sqlyze/infrastructure/quizzes/models/quiz_answer_dto.dart';

part 'quiz_result_dto.freezed.dart';

part 'quiz_result_dto.g.dart';

@freezed
class QuizResultDto with _$QuizResultDto {
  const QuizResultDto._();
  const factory QuizResultDto({
    @JsonKey(name: 'quiz_id') int? quizId,
    @JsonKey(name: 'quiz_name') String? quizName,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
    @JsonKey(name: 'total_questions') int? totalQuestions,
    @JsonKey(name: 'correct_answers') int? correctAnswers,
    @JsonKey(name: 'incorrect_answers') int? incorrectAnswers,
    int? score,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'total_duration') int? totalDuration,
  }) = _QuizResultDto;

  factory QuizResultDto.fromDomain(QuizResult? quizResult) {
    return QuizResultDto(
      quizId: quizResult?.quizId,
      quizName: quizResult?.quizName,
      userId: quizResult?.userId,
      fullName: quizResult?.fullName,
      profileImageUrl: quizResult?.profileImageUrl,
      totalQuestions: quizResult?.totalQuestions,
      correctAnswers: quizResult?.correctAnswers,
      incorrectAnswers: quizResult?.incorrectAnswers,
      score: quizResult?.score,
      startTime: quizResult?.startTime,
      endTime: quizResult?.endTime,
      totalDuration: quizResult?.totalDuration,
    );
  }

  QuizResult toDomain() {
    return QuizResult(
        quizId: quizId,
        quizName: quizName,
        userId: userId,
        fullName: fullName,
        profileImageUrl: profileImageUrl,
        totalQuestions: totalQuestions,
        correctAnswers: correctAnswers,
        incorrectAnswers: incorrectAnswers,
        score: score,
        startTime: startTime,
        endTime: endTime,
        totalDuration: totalDuration);
  }

  factory QuizResultDto.fromJson(Map<String, Object?> json) =>
      _$QuizResultDtoFromJson(json);

  static List<QuizResult> fromJsonList(List<dynamic> list) {
    List<QuizResult> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(
            QuizResultDto.fromJson(object as Map<String, Object?>).toDomain());
      }
    }
    return result;
  }
}
