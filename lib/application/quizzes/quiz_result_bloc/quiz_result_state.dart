part of 'quiz_result_bloc.dart';

@freezed
class QuizResultState with _$QuizResultState {
  const factory QuizResultState.initial() = _Initial;
  const factory QuizResultState.loadInProgress() = _LoadInProgress;
  const factory QuizResultState.loadSuccess(QuizResult? quizResult) =
      _LoadSuccess;
  const factory QuizResultState.loadFailure(String? message) = _LoadFailure;
}
