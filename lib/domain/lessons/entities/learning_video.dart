import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_video.freezed.dart';

@freezed
class LearningVideo with _$LearningVideo {
  factory LearningVideo({
    int? id,
    int? materialId,
    String? title,
    String? url,
    String? createdAt,
    String? updatedAt,
  }) = _LearningVideo;
}
