import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/lessons/entities/learning_document.dart';

part 'learning_document_dto.freezed.dart';

part 'learning_document_dto.g.dart';

@freezed
class LearningDocumentDto with _$LearningDocumentDto {
  const LearningDocumentDto._();
  const factory LearningDocumentDto({
    int? id,
    @JsonKey(name: 'material_id') int? materialId,
    String? title,
    @JsonKey(name: 'document_type') String? documentType,
    String? url,
    String? createdAt,
    String? updatedAt,
  }) = _LearningDocumentDto;

  factory LearningDocumentDto.fromDomain(LearningDocument? learningDocument) {
    return LearningDocumentDto(
        id: learningDocument?.id,
        materialId: learningDocument?.materialId,
        title: learningDocument?.title,
        documentType: learningDocument?.documentType,
        url: learningDocument?.url,
        createdAt: learningDocument?.createdAt,
        updatedAt: learningDocument?.updatedAt);
  }

  LearningDocument toDomain() {
    return LearningDocument(
        id: id,
        materialId: materialId,
        title: title,
        documentType: documentType,
        url: url,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }

  factory LearningDocumentDto.fromJson(Map<String, Object?> json) =>
      _$LearningDocumentDtoFromJson(json);

  static List<LearningDocument> fromJsonList(List<dynamic> list) {
    List<LearningDocument> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(LearningDocumentDto.fromJson(object as Map<String, Object?>)
            .toDomain());
      }
    }
    return result;
  }
}
