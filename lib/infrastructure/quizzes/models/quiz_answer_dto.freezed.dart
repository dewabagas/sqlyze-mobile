// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_answer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizAnswerDto _$QuizAnswerDtoFromJson(Map<String, dynamic> json) {
  return _QuizAnswerDto.fromJson(json);
}

/// @nodoc
mixin _$QuizAnswerDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_id')
  int? get questionId => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_correct')
  bool? get isCorrect => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizAnswerDtoCopyWith<QuizAnswerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizAnswerDtoCopyWith<$Res> {
  factory $QuizAnswerDtoCopyWith(
          QuizAnswerDto value, $Res Function(QuizAnswerDto) then) =
      _$QuizAnswerDtoCopyWithImpl<$Res, QuizAnswerDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'question_id') int? questionId,
      String? answer,
      @JsonKey(name: 'is_correct') bool? isCorrect,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$QuizAnswerDtoCopyWithImpl<$Res, $Val extends QuizAnswerDto>
    implements $QuizAnswerDtoCopyWith<$Res> {
  _$QuizAnswerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionId = freezed,
    Object? answer = freezed,
    Object? isCorrect = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$_QuizAnswerDtoCopyWith<$Res>
    implements $QuizAnswerDtoCopyWith<$Res> {
  factory _$$_QuizAnswerDtoCopyWith(
          _$_QuizAnswerDto value, $Res Function(_$_QuizAnswerDto) then) =
      __$$_QuizAnswerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'question_id') int? questionId,
      String? answer,
      @JsonKey(name: 'is_correct') bool? isCorrect,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_QuizAnswerDtoCopyWithImpl<$Res>
    extends _$QuizAnswerDtoCopyWithImpl<$Res, _$_QuizAnswerDto>
    implements _$$_QuizAnswerDtoCopyWith<$Res> {
  __$$_QuizAnswerDtoCopyWithImpl(
      _$_QuizAnswerDto _value, $Res Function(_$_QuizAnswerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questionId = freezed,
    Object? answer = freezed,
    Object? isCorrect = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_QuizAnswerDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$_QuizAnswerDto extends _QuizAnswerDto {
  const _$_QuizAnswerDto(
      {this.id,
      @JsonKey(name: 'question_id') this.questionId,
      this.answer,
      @JsonKey(name: 'is_correct') this.isCorrect,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_QuizAnswerDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuizAnswerDtoFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'question_id')
  final int? questionId;
  @override
  final String? answer;
  @override
  @JsonKey(name: 'is_correct')
  final bool? isCorrect;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'QuizAnswerDto(id: $id, questionId: $questionId, answer: $answer, isCorrect: $isCorrect, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizAnswerDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, questionId, answer, isCorrect, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizAnswerDtoCopyWith<_$_QuizAnswerDto> get copyWith =>
      __$$_QuizAnswerDtoCopyWithImpl<_$_QuizAnswerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizAnswerDtoToJson(
      this,
    );
  }
}

abstract class _QuizAnswerDto extends QuizAnswerDto {
  const factory _QuizAnswerDto(
      {final int? id,
      @JsonKey(name: 'question_id') final int? questionId,
      final String? answer,
      @JsonKey(name: 'is_correct') final bool? isCorrect,
      final String? createdAt,
      final String? updatedAt}) = _$_QuizAnswerDto;
  const _QuizAnswerDto._() : super._();

  factory _QuizAnswerDto.fromJson(Map<String, dynamic> json) =
      _$_QuizAnswerDto.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'question_id')
  int? get questionId;
  @override
  String? get answer;
  @override
  @JsonKey(name: 'is_correct')
  bool? get isCorrect;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_QuizAnswerDtoCopyWith<_$_QuizAnswerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
