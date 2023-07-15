import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_detail.dart';
import 'package:sqlyze/domain/quizzes/interfaces/i_quiz_repository.dart';

part 'quiz_detail_event.dart';
part 'quiz_detail_state.dart';
part 'quiz_detail_bloc.freezed.dart';

@injectable
class QuizDetailBloc extends Bloc<QuizDetailEvent, QuizDetailState> {
  final IQuizRepository iQuizRepository;

  QuizDetailBloc(this.iQuizRepository)
      : super(const QuizDetailState.initial()) {
    on<_$_GetQuizByMaterialId>((event, emit) async {
      try {
        log('lesson bloc');
        emit(const QuizDetailState.loadInProgress());
        final data =
            await iQuizRepository.getQuizByMaterialId(event.materialId);
        log('response bloc ${data}');
        data.fold(
          (l) => emit(QuizDetailState.loadFailure(l.message)),
          (r) => emit(QuizDetailState.loadSuccess(r)),
        );
      } catch (e) {
        emit(QuizDetailState.loadFailure(e.toString()));
      }
    });
  }
}
