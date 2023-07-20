import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_detail.freezed.dart';

@freezed
class QuizDetail with _$QuizDetail {
  factory QuizDetail({
    int? id,
    int? materialId,
    String? title,
    bool? isFinalExam,
    String? duration,
    int? passingScore,
    int? questionCount,
    bool? hasAttempted,
    String? createdAt,
    String? updatedAt,
  }) = _QuizDetail;
}
