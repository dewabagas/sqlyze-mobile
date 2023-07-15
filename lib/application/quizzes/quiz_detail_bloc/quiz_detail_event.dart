part of 'quiz_detail_bloc.dart';

@freezed
class QuizDetailEvent with _$QuizDetailEvent {
  const factory QuizDetailEvent.getQuizByMaterialId(int materialId) =
      _GetQuizByMaterialId;
}
