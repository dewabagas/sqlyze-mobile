// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_question_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizQuestionDto _$QuizQuestionDtoFromJson(Map<String, dynamic> json) {
  return _QuizQuestionDto.fromJson(json);
}

/// @nodoc
mixin _$QuizQuestionDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'quiz_id')
  int? get quizId => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_type')
  String? get questionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'quiz_answers')
  List<QuizAnswerDto>? get quizAnswers => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizQuestionDtoCopyWith<QuizQuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizQuestionDtoCopyWith<$Res> {
  factory $QuizQuestionDtoCopyWith(
          QuizQuestionDto value, $Res Function(QuizQuestionDto) then) =
      _$QuizQuestionDtoCopyWithImpl<$Res, QuizQuestionDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'quiz_id') int? quizId,
      String? question,
      @JsonKey(name: 'question_type') String? questionType,
      @JsonKey(name: 'quiz_answers') List<QuizAnswerDto>? quizAnswers,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$QuizQuestionDtoCopyWithImpl<$Res, $Val extends QuizQuestionDto>
    implements $QuizQuestionDtoCopyWith<$Res> {
  _$QuizQuestionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quizId = freezed,
    Object? question = freezed,
    Object? questionType = freezed,
    Object? quizAnswers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      quizAnswers: freezed == quizAnswers
          ? _value.quizAnswers
          : quizAnswers // ignore: cast_nullable_to_non_nullable
              as List<QuizAnswerDto>?,
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
abstract class _$$_QuizQuestionDtoCopyWith<$Res>
    implements $QuizQuestionDtoCopyWith<$Res> {
  factory _$$_QuizQuestionDtoCopyWith(
          _$_QuizQuestionDto value, $Res Function(_$_QuizQuestionDto) then) =
      __$$_QuizQuestionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'quiz_id') int? quizId,
      String? question,
      @JsonKey(name: 'question_type') String? questionType,
      @JsonKey(name: 'quiz_answers') List<QuizAnswerDto>? quizAnswers,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_QuizQuestionDtoCopyWithImpl<$Res>
    extends _$QuizQuestionDtoCopyWithImpl<$Res, _$_QuizQuestionDto>
    implements _$$_QuizQuestionDtoCopyWith<$Res> {
  __$$_QuizQuestionDtoCopyWithImpl(
      _$_QuizQuestionDto _value, $Res Function(_$_QuizQuestionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quizId = freezed,
    Object? question = freezed,
    Object? questionType = freezed,
    Object? quizAnswers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_QuizQuestionDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      quizAnswers: freezed == quizAnswers
          ? _value._quizAnswers
          : quizAnswers // ignore: cast_nullable_to_non_nullable
              as List<QuizAnswerDto>?,
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
class _$_QuizQuestionDto extends _QuizQuestionDto {
  const _$_QuizQuestionDto(
      {this.id,
      @JsonKey(name: 'quiz_id') this.quizId,
      this.question,
      @JsonKey(name: 'question_type') this.questionType,
      @JsonKey(name: 'quiz_answers') final List<QuizAnswerDto>? quizAnswers,
      this.createdAt,
      this.updatedAt})
      : _quizAnswers = quizAnswers,
        super._();

  factory _$_QuizQuestionDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuizQuestionDtoFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'quiz_id')
  final int? quizId;
  @override
  final String? question;
  @override
  @JsonKey(name: 'question_type')
  final String? questionType;
  final List<QuizAnswerDto>? _quizAnswers;
  @override
  @JsonKey(name: 'quiz_answers')
  List<QuizAnswerDto>? get quizAnswers {
    final value = _quizAnswers;
    if (value == null) return null;
    if (_quizAnswers is EqualUnmodifiableListView) return _quizAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'QuizQuestionDto(id: $id, quizId: $quizId, question: $question, questionType: $questionType, quizAnswers: $quizAnswers, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizQuestionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            const DeepCollectionEquality()
                .equals(other._quizAnswers, _quizAnswers) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quizId,
      question,
      questionType,
      const DeepCollectionEquality().hash(_quizAnswers),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizQuestionDtoCopyWith<_$_QuizQuestionDto> get copyWith =>
      __$$_QuizQuestionDtoCopyWithImpl<_$_QuizQuestionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizQuestionDtoToJson(
      this,
    );
  }
}

abstract class _QuizQuestionDto extends QuizQuestionDto {
  const factory _QuizQuestionDto(
      {final int? id,
      @JsonKey(name: 'quiz_id') final int? quizId,
      final String? question,
      @JsonKey(name: 'question_type') final String? questionType,
      @JsonKey(name: 'quiz_answers') final List<QuizAnswerDto>? quizAnswers,
      final String? createdAt,
      final String? updatedAt}) = _$_QuizQuestionDto;
  const _QuizQuestionDto._() : super._();

  factory _QuizQuestionDto.fromJson(Map<String, dynamic> json) =
      _$_QuizQuestionDto.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'quiz_id')
  int? get quizId;
  @override
  String? get question;
  @override
  @JsonKey(name: 'question_type')
  String? get questionType;
  @override
  @JsonKey(name: 'quiz_answers')
  List<QuizAnswerDto>? get quizAnswers;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_QuizQuestionDtoCopyWith<_$_QuizQuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
