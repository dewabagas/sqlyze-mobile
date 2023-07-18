part of 'quiz_questions_bloc.dart';

@freezed
class QuizQuestionsEvent with _$QuizQuestionsEvent {
  const factory QuizQuestionsEvent.getQuizQuestions(int quizId) =
      _GetQuizQuestions;
  const factory QuizQuestionsEvent.nextQuestion() = _NextQuestion;
  const factory QuizQuestionsEvent.previousQuestion() = _PreviousQuestion;
}
