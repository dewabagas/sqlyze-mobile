import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_answer.dart';

part 'quiz_question.freezed.dart';

@freezed
class QuizQuestion with _$QuizQuestion {
  factory QuizQuestion({
    int? id,
    int? quizId,
    String? question,
    String? questionType,
    List<QuizAnswer>? quizAnswers,
    String? createdAt,
    String? updatedAt,
  }) = _QuizQuestion;
}
