import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/lessons/entities/learning_presentation.dart';

part 'learning_presentation_dto.freezed.dart';

part 'learning_presentation_dto.g.dart';

@freezed
class LearningPresentationDto with _$LearningPresentationDto {
  const LearningPresentationDto._();
  const factory LearningPresentationDto({
    int? id,
    @JsonKey(name: 'material_id') int? materialId,
    String? title,
    @JsonKey(name: 'file_url') String? fileUrl,
    String? createdAt,
    String? updatedAt,
  }) = _LearningPresentationDto;

  factory LearningPresentationDto.fromDomain(
      LearningPresentation? learningPresentation) {
    return LearningPresentationDto(
        id: learningPresentation?.id,
        materialId: learningPresentation?.materialId,
        title: learningPresentation?.title,
        fileUrl: learningPresentation?.fileUrl,
        createdAt: learningPresentation?.createdAt,
        updatedAt: learningPresentation?.updatedAt);
  }

  LearningPresentation toDomain() {
    return LearningPresentation(
        id: id,
        materialId: materialId,
        title: title,
        fileUrl: fileUrl,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  factory LearningPresentationDto.fromJson(Map<String, Object?> json) =>
      _$LearningPresentationDtoFromJson(json);

  static List<LearningPresentation> fromJsonList(List<dynamic> list) {
    List<LearningPresentation> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(
            LearningPresentationDto.fromJson(object as Map<String, Object?>)
                .toDomain());
      }
    }
    return result;
  }
}
