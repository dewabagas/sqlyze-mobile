part of 'quiz_answer_submission_cubit.dart';

@freezed
class QuizAnswerSubmissionState with _$QuizAnswerSubmissionState {
  const factory QuizAnswerSubmissionState.initial() = _Initial;
  const factory QuizAnswerSubmissionState.loadInProgress() = _LoadInProgress;
  const factory QuizAnswerSubmissionState.loadSuccess(
      QuizSubmissionResponse? quizSubmissionResponse) = _LoadSuccess;
  const factory QuizAnswerSubmissionState.loadFailure(String? message) =
      _LoadFailure;
}
