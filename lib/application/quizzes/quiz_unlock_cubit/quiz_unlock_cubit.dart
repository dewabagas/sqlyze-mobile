import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/quizzes/interfaces/i_quiz_repository.dart';

part 'quiz_unlock_state.dart';
part 'quiz_unlock_cubit.freezed.dart';

@injectable
class QuizUnlockCubit extends Cubit<QuizUnlockState> {
  final IQuizRepository iQuizRepository;

  QuizUnlockCubit(this.iQuizRepository)
      : super(const QuizUnlockState.initial());

  void quizUnlock(int materialId) async {
    try {
      debugPrint('cubit unlock');
      emit(const QuizUnlockState.loadInProgress());
      final data = await iQuizRepository.unlockQuiz(materialId);
      debugPrint('cubit banswer ${data}');
      data.fold(
        (l) => emit(QuizUnlockState.loadFailure(l.message)),
        (r) => emit(QuizUnlockState.loadSuccess(r)),
      );
    } catch (e) {
      emit(QuizUnlockState.loadFailure(e.toString()));
    }
  }
}
