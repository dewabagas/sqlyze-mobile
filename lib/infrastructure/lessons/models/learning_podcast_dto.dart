import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/lessons/entities/learning_podcast.dart';

part 'learning_podcast_dto.freezed.dart';

part 'learning_podcast_dto.g.dart';

@freezed
class LearningPodcastDto with _$LearningPodcastDto {
  const LearningPodcastDto._();
  const factory LearningPodcastDto({
    int? id,
    @JsonKey(name: 'material_id') int? materialId,
    String? title,
    String? url,
    String? createdAt,
    String? updatedAt,
  }) = _LearningPodcastDto;

  factory LearningPodcastDto.fromDomain(LearningPodcast? learningPodcast) {
    return LearningPodcastDto(
        id: learningPodcast?.id,
        materialId: learningPodcast?.materialId,
        title: learningPodcast?.title,
        url: learningPodcast?.url,
        createdAt: learningPodcast?.createdAt,
        updatedAt: learningPodcast?.updatedAt);
  }

  LearningPodcast toDomain() {
    return LearningPodcast(
        id: id,
        materialId: materialId,
        title: title,
        url: url,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  factory LearningPodcastDto.fromJson(Map<String, Object?> json) =>
      _$LearningPodcastDtoFromJson(json);

  static List<LearningPodcast> fromJsonList(List<dynamic> list) {
    List<LearningPodcast> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(LearningPodcastDto.fromJson(object as Map<String, Object?>)
            .toDomain());
      }
    }
    return result;
  }
}
