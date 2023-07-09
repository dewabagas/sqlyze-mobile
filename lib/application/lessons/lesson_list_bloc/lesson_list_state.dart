part of 'lesson_list_bloc.dart';

@freezed
class LessonListState with _$LessonListState {
  const factory LessonListState.initial() = _Initial;
  const factory LessonListState.loadInProgress() = _LoadInProgress;
  const factory LessonListState.loadSuccess(List<LessonDetail>? lessonList) =
      _LoadSuccess;
  const factory LessonListState.loadFailure(String? message) = _LoadFailure;
}
