import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/domain/lessons/interfaces/i_lesson_repository.dart';

part 'lesson_list_event.dart';
part 'lesson_list_state.dart';
part 'lesson_list_bloc.freezed.dart';

@injectable
class LessonListBloc extends Bloc<LessonListEvent, LessonListState> {
  final ILessonRepository iLessonRepository;

  LessonListBloc(this.iLessonRepository)
      : super(const LessonListState.initial()) {
    on<_$_GetAllLessons>((event, emit) async {
      try {
        emit(const LessonListState.loadInProgress());
        final data = await iLessonRepository.getAllLessons(event.materialType);
        data.fold(
          (l) => emit(LessonListState.loadFailure(l.message)),
          (r) => emit(LessonListState.loadSuccess(r)),
        );
      } catch (e) {
        emit(LessonListState.loadFailure(e.toString()));
      }
    });
  }
}
