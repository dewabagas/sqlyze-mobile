part of 'learning_analytic_bloc.dart';

@freezed
class LearningAnalyticState with _$LearningAnalyticState {
  const factory LearningAnalyticState.initial() = _Initial;
  const factory LearningAnalyticState.loadInProgress() = _LoadInProgress;
  const factory LearningAnalyticState.loadSuccess(
      LearningAnalytic? learningAnalytic) = _LoadSuccess;
  const factory LearningAnalyticState.loadFailure(String? message) =
      _LoadFailure;
}
