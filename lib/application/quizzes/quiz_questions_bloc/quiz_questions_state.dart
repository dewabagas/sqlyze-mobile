part of 'quiz_questions_bloc.dart';

@freezed
class QuizQuestionsState with _$QuizQuestionsState {
  const factory QuizQuestionsState.initial() = _Initial;
  const factory QuizQuestionsState.loadInProgress() = _LoadInProgress;
  const factory QuizQuestionsState.loadSuccess(
      List<QuizQuestion>? quizQuestions) = _LoadSuccess;
  const factory QuizQuestionsState.loadFailure(String? message) = _LoadFailure;
}
