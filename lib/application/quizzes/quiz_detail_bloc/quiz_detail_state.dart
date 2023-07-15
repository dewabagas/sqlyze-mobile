part of 'quiz_detail_bloc.dart';

@freezed
class QuizDetailState with _$QuizDetailState {
  const factory QuizDetailState.initial() = _Initial;
  const factory QuizDetailState.loadInProgress() = _LoadInProgress;
  const factory QuizDetailState.loadSuccess(QuizDetail? quizDetail) =
      _LoadSuccess;
  const factory QuizDetailState.loadFailure(String? message) = _LoadFailure;
}
