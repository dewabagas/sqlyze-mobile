import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_result.dart';
import 'package:sqlyze/domain/quizzes/interfaces/i_quiz_repository.dart';

part 'quiz_result_event.dart';
part 'quiz_result_state.dart';
part 'quiz_result_bloc.freezed.dart';

@injectable
class QuizResultBloc extends Bloc<QuizResultEvent, QuizResultState> {
  final IQuizRepository iQuizRepository;

  QuizResultBloc(this.iQuizRepository)
      : super(const QuizResultState.initial()) {
    on<_$_GetQuizResult>((event, emit) async {
      try {
        log('lesson bloc');
        emit(const QuizResultState.loadInProgress());
        final data =
            await iQuizRepository.getQuizResult(event.quizId, event.userId);
        log('response bloc ${data}');
        data.fold(
          (l) => emit(QuizResultState.loadFailure(l.message)),
          (r) => emit(QuizResultState.loadSuccess(r)),
        );
      } catch (e) {
        emit(QuizResultState.loadFailure(e.toString()));
      }
    });
  }
}
