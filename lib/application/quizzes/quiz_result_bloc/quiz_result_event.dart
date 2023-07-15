part of 'quiz_result_bloc.dart';

@freezed
class QuizResultEvent with _$QuizResultEvent {
  const factory QuizResultEvent.getQuizResult(int quizId, int userId) =
      _GetQuizResult;
}
