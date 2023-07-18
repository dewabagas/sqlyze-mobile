// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizDetailDto _$QuizDetailDtoFromJson(Map<String, dynamic> json) {
  return _QuizDetailDto.fromJson(json);
}

/// @nodoc
mixin _$QuizDetailDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'material_id')
  int? get materialId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_final_exam')
  bool? get isFinalExam => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'passing_score')
  int? get passingScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_count')
  int? get questionCount => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizDetailDtoCopyWith<QuizDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizDetailDtoCopyWith<$Res> {
  factory $QuizDetailDtoCopyWith(
          QuizDetailDto value, $Res Function(QuizDetailDto) then) =
      _$QuizDetailDtoCopyWithImpl<$Res, QuizDetailDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'material_id') int? materialId,
      String? title,
      @JsonKey(name: 'is_final_exam') bool? isFinalExam,
      String? duration,
      @JsonKey(name: 'passing_score') int? passingScore,
      @JsonKey(name: 'question_count') int? questionCount,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$QuizDetailDtoCopyWithImpl<$Res, $Val extends QuizDetailDto>
    implements $QuizDetailDtoCopyWith<$Res> {
  _$QuizDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? materialId = freezed,
    Object? title = freezed,
    Object? isFinalExam = freezed,
    Object? duration = freezed,
    Object? passingScore = freezed,
    Object? questionCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      materialId: freezed == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isFinalExam: freezed == isFinalExam
          ? _value.isFinalExam
          : isFinalExam // ignore: cast_nullable_to_non_nullable
              as bool?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      passingScore: freezed == passingScore
          ? _value.passingScore
          : passingScore // ignore: cast_nullable_to_non_nullable
              as int?,
      questionCount: freezed == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizDetailDtoCopyWith<$Res>
    implements $QuizDetailDtoCopyWith<$Res> {
  factory _$$_QuizDetailDtoCopyWith(
          _$_QuizDetailDto value, $Res Function(_$_QuizDetailDto) then) =
      __$$_QuizDetailDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'material_id') int? materialId,
      String? title,
      @JsonKey(name: 'is_final_exam') bool? isFinalExam,
      String? duration,
      @JsonKey(name: 'passing_score') int? passingScore,
      @JsonKey(name: 'question_count') int? questionCount,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_QuizDetailDtoCopyWithImpl<$Res>
    extends _$QuizDetailDtoCopyWithImpl<$Res, _$_QuizDetailDto>
    implements _$$_QuizDetailDtoCopyWith<$Res> {
  __$$_QuizDetailDtoCopyWithImpl(
      _$_QuizDetailDto _value, $Res Function(_$_QuizDetailDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? materialId = freezed,
    Object? title = freezed,
    Object? isFinalExam = freezed,
    Object? duration = freezed,
    Object? passingScore = freezed,
    Object? questionCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_QuizDetailDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      materialId: freezed == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isFinalExam: freezed == isFinalExam
          ? _value.isFinalExam
          : isFinalExam // ignore: cast_nullable_to_non_nullable
              as bool?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      passingScore: freezed == passingScore
          ? _value.passingScore
          : passingScore // ignore: cast_nullable_to_non_nullable
              as int?,
      questionCount: freezed == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuizDetailDto extends _QuizDetailDto {
  const _$_QuizDetailDto(
      {this.id,
      @JsonKey(name: 'material_id') this.materialId,
      this.title,
      @JsonKey(name: 'is_final_exam') this.isFinalExam,
      this.duration,
      @JsonKey(name: 'passing_score') this.passingScore,
      @JsonKey(name: 'question_count') this.questionCount,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_QuizDetailDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuizDetailDtoFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'material_id')
  final int? materialId;
  @override
  final String? title;
  @override
  @JsonKey(name: 'is_final_exam')
  final bool? isFinalExam;
  @override
  final String? duration;
  @override
  @JsonKey(name: 'passing_score')
  final int? passingScore;
  @override
  @JsonKey(name: 'question_count')
  final int? questionCount;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'QuizDetailDto(id: $id, materialId: $materialId, title: $title, isFinalExam: $isFinalExam, duration: $duration, passingScore: $passingScore, questionCount: $questionCount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizDetailDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.materialId, materialId) ||
                other.materialId == materialId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isFinalExam, isFinalExam) ||
                other.isFinalExam == isFinalExam) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.passingScore, passingScore) ||
                other.passingScore == passingScore) &&
            (identical(other.questionCount, questionCount) ||
                other.questionCount == questionCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, materialId, title,
      isFinalExam, duration, passingScore, questionCount, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizDetailDtoCopyWith<_$_QuizDetailDto> get copyWith =>
      __$$_QuizDetailDtoCopyWithImpl<_$_QuizDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizDetailDtoToJson(
      this,
    );
  }
}

abstract class _QuizDetailDto extends QuizDetailDto {
  const factory _QuizDetailDto(
      {final int? id,
      @JsonKey(name: 'material_id') final int? materialId,
      final String? title,
      @JsonKey(name: 'is_final_exam') final bool? isFinalExam,
      final String? duration,
      @JsonKey(name: 'passing_score') final int? passingScore,
      @JsonKey(name: 'question_count') final int? questionCount,
      final String? createdAt,
      final String? updatedAt}) = _$_QuizDetailDto;
  const _QuizDetailDto._() : super._();

  factory _QuizDetailDto.fromJson(Map<String, dynamic> json) =
      _$_QuizDetailDto.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'material_id')
  int? get materialId;
  @override
  String? get title;
  @override
  @JsonKey(name: 'is_final_exam')
  bool? get isFinalExam;
  @override
  String? get duration;
  @override
  @JsonKey(name: 'passing_score')
  int? get passingScore;
  @override
  @JsonKey(name: 'question_count')
  int? get questionCount;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_QuizDetailDtoCopyWith<_$_QuizDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
