part of 'lesson_list_bloc.dart';

@freezed
class LessonListEvent with _$LessonListEvent {
  const factory LessonListEvent.getAllLessons(int materialType) =
      _GetAllLessons;
}
