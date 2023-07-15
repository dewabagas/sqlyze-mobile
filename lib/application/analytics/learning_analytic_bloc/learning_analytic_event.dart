part of 'learning_analytic_bloc.dart';

@freezed
class LearningAnalyticEvent with _$LearningAnalyticEvent {
  const factory LearningAnalyticEvent.getLearningAnalytic(int userId) =
      _GetLearningAnalytic;
}
