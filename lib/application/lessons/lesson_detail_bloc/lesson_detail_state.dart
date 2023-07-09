part of 'lesson_detail_bloc.dart';

@freezed
class LessonDetailState with _$LessonDetailState {
  const factory LessonDetailState.initial() = _Initial;
  const factory LessonDetailState.loadInProgress() = _LoadInProgress;
  const factory LessonDetailState.loadSuccess(LessonDetail? lessonDetail) =
      _LoadSuccess;
  const factory LessonDetailState.loadFailure(String? message) = _LoadFailure;
}
