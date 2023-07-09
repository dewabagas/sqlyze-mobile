import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/domain/lessons/interfaces/i_lesson_repository.dart';

part 'lesson_detail_event.dart';
part 'lesson_detail_state.dart';
part 'lesson_detail_bloc.freezed.dart';

@injectable
class LessonDetailBloc extends Bloc<LessonDetailEvent, LessonDetailState> {
  final ILessonRepository iLessonRepository;

  LessonDetailBloc(this.iLessonRepository)
      : super(const LessonDetailState.initial()) {
    on<_$_GetLessonDetail>((event, emit) async {
      try {
        log('lesson bloc');
        emit(const LessonDetailState.loadInProgress());
        final data = await iLessonRepository.getLessonDetail(event.materialId);
        log('response bloc ${data}');
        data.fold(
          (l) => emit(LessonDetailState.loadFailure(l.message)),
          (r) => emit(LessonDetailState.loadSuccess(r)),
        );
      } catch (e) {
        emit(LessonDetailState.loadFailure(e.toString()));
      }
    });
  }
}
