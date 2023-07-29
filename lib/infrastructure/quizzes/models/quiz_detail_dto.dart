import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_detail.dart';

part 'quiz_detail_dto.freezed.dart';

part 'quiz_detail_dto.g.dart';

@freezed
class QuizDetailDto with _$QuizDetailDto {
  const QuizDetailDto._();
  const factory QuizDetailDto({
    int? id,
    @JsonKey(name: 'material_id') int? materialId,
    String? title,
    @JsonKey(name: 'is_final_exam') bool? isFinalExam,
    String? duration,
    @JsonKey(name: 'passing_score') int? passingScore,
    @JsonKey(name: 'question_count') int? questionCount,
    @JsonKey(name: 'has_attempted') bool? hasAttempted,
    @JsonKey(name: 'is_unlocked') bool? isUnlocked,
    String? createdAt,
    String? updatedAt,
  }) = _QuizDetailDto;

  factory QuizDetailDto.fromDomain(QuizDetail? quizDetail) {
    return QuizDetailDto(
        id: quizDetail?.id,
        materialId: quizDetail?.materialId,
        title: quizDetail?.title,
        isFinalExam: quizDetail?.isFinalExam,
        duration: quizDetail?.duration,
        passingScore: quizDetail?.passingScore,
        questionCount: quizDetail?.questionCount,
        hasAttempted: quizDetail?.hasAttempted,
        isUnlocked: quizDetail?.isUnlocked,
        createdAt: quizDetail?.createdAt,
        updatedAt: quizDetail?.updatedAt);
  }

  QuizDetail toDomain() {
    return QuizDetail(
        id: id,
        materialId: materialId,
        title: title,
        isFinalExam: isFinalExam,
        duration: duration,
        passingScore: passingScore,
        questionCount: questionCount,
        hasAttempted: hasAttempted,
        isUnlocked: isUnlocked,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  factory QuizDetailDto.fromJson(Map<String, Object?> json) =>
      _$QuizDetailDtoFromJson(json);

  static List<QuizDetail> fromJsonList(List<dynamic> list) {
    List<QuizDetail> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(
            QuizDetailDto.fromJson(object as Map<String, Object?>).toDomain());
      }
    }
    return result;
  }
}
