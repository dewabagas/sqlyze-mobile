import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_answer.freezed.dart';

@freezed
class QuizAnswer with _$QuizAnswer {
  factory QuizAnswer({
    int? id,
    int? questionId,
    String? answer,
    bool? isCorrect,
    String? createdAt,
    String? updatedAt,
  }) = _QuizAnswer;
}
