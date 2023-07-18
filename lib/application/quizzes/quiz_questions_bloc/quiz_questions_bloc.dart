import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_question.dart';
import 'package:sqlyze/domain/quizzes/interfaces/i_quiz_repository.dart';

part 'quiz_questions_event.dart';
part 'quiz_questions_state.dart';
part 'quiz_questions_bloc.freezed.dart';

@injectable
class QuizQuestionsBloc extends Bloc<QuizQuestionsEvent, QuizQuestionsState> {
  final IQuizRepository iQuizRepository;

  QuizQuestionsBloc(this.iQuizRepository)
      : super(const QuizQuestionsState.initial()) {
    on<_$_GetQuizQuestions>((event, emit) async {
      try {
        emit(const QuizQuestionsState.loadInProgress());
        final data = await iQuizRepository.getQuizQuestions(event.quizId);
        debugPrint('questios bloc $data');
        data.fold(
          (l) => emit(QuizQuestionsState.loadFailure(l.message)),
          (r) => emit(QuizQuestionsState.loadSuccess(0, r)),
        );
      } catch (e) {
        emit(QuizQuestionsState.loadFailure(e.toString()));
      }
    });

    on<_NextQuestion>((event, emit) async {
      // ambil state saat ini
      debugPrint('next');
      final currentState = state;

      // periksa apakah state saat ini adalah loadSuccess dan bukan pertanyaan terakhir
      if (currentState is _LoadSuccess &&
          currentState.currentQuestionIndex + 1 <
              currentState.quizQuestions!.length) {
        // jika benar, naikkan indeks pertanyaan dan kirim state baru
        emit(QuizQuestionsState.loadSuccess(
            currentState.currentQuestionIndex + 1, currentState.quizQuestions));
      }
    });

    on<_PreviousQuestion>((event, emit) async {
      // ambil state saat ini
      debugPrint('prev');
      final currentState = state;

      // periksa apakah state saat ini adalah loadSuccess dan bukan pertanyaan pertama
      if (currentState is _LoadSuccess &&
          currentState.currentQuestionIndex - 1 >= 0) {
        // jika benar, turunkan indeks pertanyaan dan kirim state baru
        emit(QuizQuestionsState.loadSuccess(
            currentState.currentQuestionIndex - 1, currentState.quizQuestions));
      }
    });
  }
}
