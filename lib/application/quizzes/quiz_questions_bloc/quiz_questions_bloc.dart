import 'package:bloc/bloc.dart';
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
        data.fold(
          (l) => emit(QuizQuestionsState.loadFailure(l.message)),
          (r) => emit(QuizQuestionsState.loadSuccess(r)),
        );
      } catch (e) {
        emit(QuizQuestionsState.loadFailure(e.toString()));
      }
    });
  }
}
