import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_presentation.freezed.dart';

@freezed
class LearningPresentation with _$LearningPresentation {
  factory LearningPresentation({
    int? id,
    int? materialId,
    String? title,
    String? fileUrl,
    String? createdAt,
    String? updatedAt,
  }) = _LearningPresentation;
}
