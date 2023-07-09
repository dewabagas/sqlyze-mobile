import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/lessons/entities/learning_video.dart';

part 'learning_video_dto.freezed.dart';

part 'learning_video_dto.g.dart';

@freezed
class LearningVideoDto with _$LearningVideoDto {
  const LearningVideoDto._();
  const factory LearningVideoDto({
    int? id,
    @JsonKey(name: 'material_id') int? materialId,
    String? title,
    String? url,
    String? createdAt,
    String? updatedAt,
  }) = _LearningVideoDto;

  factory LearningVideoDto.fromDomain(LearningVideo? learningVideo) {
    return LearningVideoDto(
        id: learningVideo?.id,
        materialId: learningVideo?.materialId,
        title: learningVideo?.title,
        url: learningVideo?.url,
        createdAt: learningVideo?.createdAt,
        updatedAt: learningVideo?.updatedAt);
  }

  LearningVideo toDomain() {
    return LearningVideo(
        id: id,
        materialId: materialId,
        title: title,
        url: url,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  factory LearningVideoDto.fromJson(Map<String, Object?> json) =>
      _$LearningVideoDtoFromJson(json);

  static List<LearningVideo> fromJsonList(List<dynamic> list) {
    List<LearningVideo> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(LearningVideoDto.fromJson(object as Map<String, Object?>)
            .toDomain());
      }
    }
    return result;
  }
}
