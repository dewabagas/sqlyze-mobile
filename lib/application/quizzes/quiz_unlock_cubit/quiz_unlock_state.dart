part of 'quiz_unlock_cubit.dart';

@freezed
class QuizUnlockState with _$QuizUnlockState {
  const factory QuizUnlockState.initial() = _Initial;
  const factory QuizUnlockState.loadInProgress() = _LoadInProgress;
  const factory QuizUnlockState.loadSuccess(String? message) = _LoadSuccess;
  const factory QuizUnlockState.loadFailure(String? message) = _LoadFailure;
}
