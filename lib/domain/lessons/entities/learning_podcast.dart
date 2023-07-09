import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_podcast.freezed.dart';

@freezed
class LearningPodcast with _$LearningPodcast {
  factory LearningPodcast({
    int? id,
    int? materialId,
    String? title,
    String? url,
    String? createdAt,
    String? updatedAt,
  }) = _LearningPodcast;
}
