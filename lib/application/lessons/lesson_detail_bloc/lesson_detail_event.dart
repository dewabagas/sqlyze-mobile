part of 'lesson_detail_bloc.dart';

@freezed
class LessonDetailEvent with _$LessonDetailEvent {
  const factory LessonDetailEvent.getLessonDetail(int materialId) =
      _GetLessonDetail;
}
