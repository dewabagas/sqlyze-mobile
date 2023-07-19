import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/quizzes/interfaces/i_quiz_repository.dart';
import 'package:sqlyze/domain/quizzes/requests/quiz_submission_request.dart';
import 'package:sqlyze/domain/quizzes/responses/quiz_submission_response.dart';

part 'quiz_answer_submission_state.dart';
part 'quiz_answer_submission_cubit.freezed.dart';

@injectable
class QuizAnswerSubmissionCubit extends Cubit<QuizAnswerSubmissionState> {
  final IQuizRepository iQuizRepository;

  QuizAnswerSubmissionCubit(this.iQuizRepository)
      : super(const QuizAnswerSubmissionState.initial());

  void submitQuizAnswer(QuizSubmissionRequest quizSubmissionRequest) async {
    try {
      debugPrint('cubit answer');
      emit(const QuizAnswerSubmissionState.loadInProgress());
      final data =
          await iQuizRepository.submitQuizAnswer(quizSubmissionRequest);
      debugPrint('cubit banswer ${data}');
      data.fold(
        (l) => emit(QuizAnswerSubmissionState.loadFailure(l.message)),
        (r) => emit(QuizAnswerSubmissionState.loadSuccess(r)),
      );
    } catch (e) {
      emit(QuizAnswerSubmissionState.loadFailure(e.toString()));
    }
  }
}
