part of 'quiz_questions_bloc.dart';

@freezed
class QuizQuestionsEvent with _$QuizQuestionsEvent {
  const factory QuizQuestionsEvent.getQuizQuestions(int quizId) =
      _GetQuizQuestions;
}
