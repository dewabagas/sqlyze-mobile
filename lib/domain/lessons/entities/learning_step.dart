import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_step.freezed.dart';

@freezed
class LearningStep with _$LearningStep {
  factory LearningStep({
    int? id,
    int? materialId,
    String? title,
    String? url,
    String? createdAt,
    String? updatedAt,
  }) = _LearningStep;
}
