// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonDetailDto _$LessonDetailDtoFromJson(Map<String, dynamic> json) {
  return _LessonDetailDto.fromJson(json);
}

/// @nodoc
mixin _$LessonDetailDto {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  LearningVideoDto? get video => throw _privateConstructorUsedError;
  LearningPodcastDto? get podcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'learning_document')
  LearningDocumentDto? get learningDocument =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'learning_presentation')
  LearningPresentationDto? get learningPresentation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'learning_steps')
  List<LearningStepDto>? get learningSteps =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonDetailDtoCopyWith<LessonDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonDetailDtoCopyWith<$Res> {
  factory $LessonDetailDtoCopyWith(
          LessonDetailDto value, $Res Function(LessonDetailDto) then) =
      _$LessonDetailDtoCopyWithImpl<$Res, LessonDetailDto>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      LearningVideoDto? video,
      LearningPodcastDto? podcast,
      @JsonKey(name: 'learning_document') LearningDocumentDto? learningDocument,
      @JsonKey(name: 'learning_presentation')
      LearningPresentationDto? learningPresentation,
      @JsonKey(name: 'learning_steps') List<LearningStepDto>? learningSteps});

  $LearningVideoDtoCopyWith<$Res>? get video;
  $LearningPodcastDtoCopyWith<$Res>? get podcast;
  $LearningDocumentDtoCopyWith<$Res>? get learningDocument;
  $LearningPresentationDtoCopyWith<$Res>? get learningPresentation;
}

/// @nodoc
class _$LessonDetailDtoCopyWithImpl<$Res, $Val extends LessonDetailDto>
    implements $LessonDetailDtoCopyWith<$Res> {
  _$LessonDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? video = freezed,
    Object? podcast = freezed,
    Object? learningDocument = freezed,
    Object? learningPresentation = freezed,
    Object? learningSteps = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as LearningVideoDto?,
      podcast: freezed == podcast
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as LearningPodcastDto?,
      learningDocument: freezed == learningDocument
          ? _value.learningDocument
          : learningDocument // ignore: cast_nullable_to_non_nullable
              as LearningDocumentDto?,
      learningPresentation: freezed == learningPresentation
          ? _value.learningPresentation
          : learningPresentation // ignore: cast_nullable_to_non_nullable
              as LearningPresentationDto?,
      learningSteps: freezed == learningSteps
          ? _value.learningSteps
          : learningSteps // ignore: cast_nullable_to_non_nullable
              as List<LearningStepDto>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningVideoDtoCopyWith<$Res>? get video {
    if (_value.video == null) {
      return null;
    }

    return $LearningVideoDtoCopyWith<$Res>(_value.video!, (value) {
      return _then(_value.copyWith(video: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningPodcastDtoCopyWith<$Res>? get podcast {
    if (_value.podcast == null) {
      return null;
    }

    return $LearningPodcastDtoCopyWith<$Res>(_value.podcast!, (value) {
      return _then(_value.copyWith(podcast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningDocumentDtoCopyWith<$Res>? get learningDocument {
    if (_value.learningDocument == null) {
      return null;
    }

    return $LearningDocumentDtoCopyWith<$Res>(_value.learningDocument!,
        (value) {
      return _then(_value.copyWith(learningDocument: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningPresentationDtoCopyWith<$Res>? get learningPresentation {
    if (_value.learningPresentation == null) {
      return null;
    }

    return $LearningPresentationDtoCopyWith<$Res>(_value.learningPresentation!,
        (value) {
      return _then(_value.copyWith(learningPresentation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LessonDetailDtoCopyWith<$Res>
    implements $LessonDetailDtoCopyWith<$Res> {
  factory _$$_LessonDetailDtoCopyWith(
          _$_LessonDetailDto value, $Res Function(_$_LessonDetailDto) then) =
      __$$_LessonDetailDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      LearningVideoDto? video,
      LearningPodcastDto? podcast,
      @JsonKey(name: 'learning_document') LearningDocumentDto? learningDocument,
      @JsonKey(name: 'learning_presentation')
      LearningPresentationDto? learningPresentation,
      @JsonKey(name: 'learning_steps') List<LearningStepDto>? learningSteps});

  @override
  $LearningVideoDtoCopyWith<$Res>? get video;
  @override
  $LearningPodcastDtoCopyWith<$Res>? get podcast;
  @override
  $LearningDocumentDtoCopyWith<$Res>? get learningDocument;
  @override
  $LearningPresentationDtoCopyWith<$Res>? get learningPresentation;
}

/// @nodoc
class __$$_LessonDetailDtoCopyWithImpl<$Res>
    extends _$LessonDetailDtoCopyWithImpl<$Res, _$_LessonDetailDto>
    implements _$$_LessonDetailDtoCopyWith<$Res> {
  __$$_LessonDetailDtoCopyWithImpl(
      _$_LessonDetailDto _value, $Res Function(_$_LessonDetailDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? video = freezed,
    Object? podcast = freezed,
    Object? learningDocument = freezed,
    Object? learningPresentation = freezed,
    Object? learningSteps = freezed,
  }) {
    return _then(_$_LessonDetailDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as LearningVideoDto?,
      podcast: freezed == podcast
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as LearningPodcastDto?,
      learningDocument: freezed == learningDocument
          ? _value.learningDocument
          : learningDocument // ignore: cast_nullable_to_non_nullable
              as LearningDocumentDto?,
      learningPresentation: freezed == learningPresentation
          ? _value.learningPresentation
          : learningPresentation // ignore: cast_nullable_to_non_nullable
              as LearningPresentationDto?,
      learningSteps: freezed == learningSteps
          ? _value._learningSteps
          : learningSteps // ignore: cast_nullable_to_non_nullable
              as List<LearningStepDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LessonDetailDto extends _LessonDetailDto {
  const _$_LessonDetailDto(
      {this.id,
      this.title,
      this.description,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.video,
      this.podcast,
      @JsonKey(name: 'learning_document') this.learningDocument,
      @JsonKey(name: 'learning_presentation') this.learningPresentation,
      @JsonKey(name: 'learning_steps')
      final List<LearningStepDto>? learningSteps})
      : _learningSteps = learningSteps,
        super._();

  factory _$_LessonDetailDto.fromJson(Map<String, dynamic> json) =>
      _$$_LessonDetailDtoFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final LearningVideoDto? video;
  @override
  final LearningPodcastDto? podcast;
  @override
  @JsonKey(name: 'learning_document')
  final LearningDocumentDto? learningDocument;
  @override
  @JsonKey(name: 'learning_presentation')
  final LearningPresentationDto? learningPresentation;
  final List<LearningStepDto>? _learningSteps;
  @override
  @JsonKey(name: 'learning_steps')
  List<LearningStepDto>? get learningSteps {
    final value = _learningSteps;
    if (value == null) return null;
    if (_learningSteps is EqualUnmodifiableListView) return _learningSteps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LessonDetailDto(id: $id, title: $title, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, video: $video, podcast: $podcast, learningDocument: $learningDocument, learningPresentation: $learningPresentation, learningSteps: $learningSteps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonDetailDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.podcast, podcast) || other.podcast == podcast) &&
            (identical(other.learningDocument, learningDocument) ||
                other.learningDocument == learningDocument) &&
            (identical(other.learningPresentation, learningPresentation) ||
                other.learningPresentation == learningPresentation) &&
            const DeepCollectionEquality()
                .equals(other._learningSteps, _learningSteps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      createdAt,
      updatedAt,
      video,
      podcast,
      learningDocument,
      learningPresentation,
      const DeepCollectionEquality().hash(_learningSteps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonDetailDtoCopyWith<_$_LessonDetailDto> get copyWith =>
      __$$_LessonDetailDtoCopyWithImpl<_$_LessonDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonDetailDtoToJson(
      this,
    );
  }
}

abstract class _LessonDetailDto extends LessonDetailDto {
  const factory _LessonDetailDto(
      {final int? id,
      final String? title,
      final String? description,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      final LearningVideoDto? video,
      final LearningPodcastDto? podcast,
      @JsonKey(name: 'learning_document')
      final LearningDocumentDto? learningDocument,
      @JsonKey(name: 'learning_presentation')
      final LearningPresentationDto? learningPresentation,
      @JsonKey(name: 'learning_steps')
      final List<LearningStepDto>? learningSteps}) = _$_LessonDetailDto;
  const _LessonDetailDto._() : super._();

  factory _LessonDetailDto.fromJson(Map<String, dynamic> json) =
      _$_LessonDetailDto.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  LearningVideoDto? get video;
  @override
  LearningPodcastDto? get podcast;
  @override
  @JsonKey(name: 'learning_document')
  LearningDocumentDto? get learningDocument;
  @override
  @JsonKey(name: 'learning_presentation')
  LearningPresentationDto? get learningPresentation;
  @override
  @JsonKey(name: 'learning_steps')
  List<LearningStepDto>? get learningSteps;
  @override
  @JsonKey(ignore: true)
  _$$_LessonDetailDtoCopyWith<_$_LessonDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
