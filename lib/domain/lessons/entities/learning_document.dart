import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_document.freezed.dart';

@freezed
class LearningDocument with _$LearningDocument {
  factory LearningDocument({
    int? id,
    int? materialId,
    String? title,
    String? documentType,
    String? url,
    String? createdAt,
    String? updatedAt,
  }) = _LearningDocument;
}
