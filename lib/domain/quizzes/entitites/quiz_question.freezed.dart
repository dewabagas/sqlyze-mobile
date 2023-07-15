// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizQuestion {
  int? get id => throw _privateConstructorUsedError;
  int? get quizId => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  String? get questionType => throw _privateConstructorUsedError;
  List<QuizAnswer>? get quizAnswers => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizQuestionCopyWith<QuizQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizQuestionCopyWith<$Res> {
  factory $QuizQuestionCopyWith(
          QuizQuestion value, $Res Function(QuizQuestion) then) =
      _$QuizQuestionCopyWithImpl<$Res, QuizQuestion>;
  @useResult
  $Res call(
      {int? id,
      int? quizId,
      String? question,
      String? questionType,
      List<QuizAnswer>? quizAnswers,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$QuizQuestionCopyWithImpl<$Res, $Val extends QuizQuestion>
    implements $QuizQuestionCopyWith<$Res> {
  _$QuizQuestionCopyWithImpl(this._value, this._then);

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
              as List<QuizAnswer>?,
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
abstract class _$$_QuizQuestionCopyWith<$Res>
    implements $QuizQuestionCopyWith<$Res> {
  factory _$$_QuizQuestionCopyWith(
          _$_QuizQuestion value, $Res Function(_$_QuizQuestion) then) =
      __$$_QuizQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? quizId,
      String? question,
      String? questionType,
      List<QuizAnswer>? quizAnswers,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_QuizQuestionCopyWithImpl<$Res>
    extends _$QuizQuestionCopyWithImpl<$Res, _$_QuizQuestion>
    implements _$$_QuizQuestionCopyWith<$Res> {
  __$$_QuizQuestionCopyWithImpl(
      _$_QuizQuestion _value, $Res Function(_$_QuizQuestion) _then)
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
    return _then(_$_QuizQuestion(
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
              as List<QuizAnswer>?,
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

class _$_QuizQuestion implements _QuizQuestion {
  _$_QuizQuestion(
      {this.id,
      this.quizId,
      this.question,
      this.questionType,
      final List<QuizAnswer>? quizAnswers,
      this.createdAt,
      this.updatedAt})
      : _quizAnswers = quizAnswers;

  @override
  final int? id;
  @override
  final int? quizId;
  @override
  final String? question;
  @override
  final String? questionType;
  final List<QuizAnswer>? _quizAnswers;
  @override
  List<QuizAnswer>? get quizAnswers {
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
    return 'QuizQuestion(id: $id, quizId: $quizId, question: $question, questionType: $questionType, quizAnswers: $quizAnswers, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizQuestion &&
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
  _$$_QuizQuestionCopyWith<_$_QuizQuestion> get copyWith =>
      __$$_QuizQuestionCopyWithImpl<_$_QuizQuestion>(this, _$identity);
}

abstract class _QuizQuestion implements QuizQuestion {
  factory _QuizQuestion(
      {final int? id,
      final int? quizId,
      final String? question,
      final String? questionType,
      final List<QuizAnswer>? quizAnswers,
      final String? createdAt,
      final String? updatedAt}) = _$_QuizQuestion;

  @override
  int? get id;
  @override
  int? get quizId;
  @override
  String? get question;
  @override
  String? get questionType;
  @override
  List<QuizAnswer>? get quizAnswers;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_QuizQuestionCopyWith<_$_QuizQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
