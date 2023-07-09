import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/lessons/entities/learning_document.dart';
import 'package:sqlyze/domain/lessons/entities/learning_step.dart';

part 'learning_step_dto.freezed.dart';

part 'learning_step_dto.g.dart';

@freezed
class LearningStepDto with _$LearningStepDto {
  const LearningStepDto._();
  const factory LearningStepDto({
    int? id,
    @JsonKey(name: 'material_id') int? materialId,
    String? title,
    String? url,
    String? createdAt,
    String? updatedAt,
  }) = _LearningStepDto;

  factory LearningStepDto.fromDomain(LearningStep? learningStep) {
    return LearningStepDto(
        id: learningStep?.id,
        materialId: learningStep?.materialId,
        title: learningStep?.title,
        url: learningStep?.url,
        createdAt: learningStep?.createdAt,
        updatedAt: learningStep?.updatedAt);
  }

  LearningStep toDomain() {
    return LearningStep(
        id: id,
        materialId: materialId,
        title: title,
        url: url,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  factory LearningStepDto.fromJson(Map<String, Object?> json) =>
      _$LearningStepDtoFromJson(json);

  static List<LearningStep> fromJsonList(List<dynamic> list) {
    List<LearningStep> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(LearningStepDto.fromJson(object as Map<String, Object?>)
            .toDomain());
      }
    }
    return result;
  }
}
