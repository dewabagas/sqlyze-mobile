// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_analytic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnswerAnalytic {
  int? get quizId => throw _privateConstructorUsedError;
  int? get totalQuestions => throw _privateConstructorUsedError;
  int? get correctAnswers => throw _privateConstructorUsedError;
  double? get correctAnswersPercentage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnswerAnalyticCopyWith<AnswerAnalytic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerAnalyticCopyWith<$Res> {
  factory $AnswerAnalyticCopyWith(
          AnswerAnalytic value, $Res Function(AnswerAnalytic) then) =
      _$AnswerAnalyticCopyWithImpl<$Res, AnswerAnalytic>;
  @useResult
  $Res call(
      {int? quizId,
      int? totalQuestions,
      int? correctAnswers,
      double? correctAnswersPercentage});
}

/// @nodoc
class _$AnswerAnalyticCopyWithImpl<$Res, $Val extends AnswerAnalytic>
    implements $AnswerAnalyticCopyWith<$Res> {
  _$AnswerAnalyticCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = freezed,
    Object? totalQuestions = freezed,
    Object? correctAnswers = freezed,
    Object? correctAnswersPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswers: freezed == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswersPercentage: freezed == correctAnswersPercentage
          ? _value.correctAnswersPercentage
          : correctAnswersPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerAnalyticCopyWith<$Res>
    implements $AnswerAnalyticCopyWith<$Res> {
  factory _$$_AnswerAnalyticCopyWith(
          _$_AnswerAnalytic value, $Res Function(_$_AnswerAnalytic) then) =
      __$$_AnswerAnalyticCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? quizId,
      int? totalQuestions,
      int? correctAnswers,
      double? correctAnswersPercentage});
}

/// @nodoc
class __$$_AnswerAnalyticCopyWithImpl<$Res>
    extends _$AnswerAnalyticCopyWithImpl<$Res, _$_AnswerAnalytic>
    implements _$$_AnswerAnalyticCopyWith<$Res> {
  __$$_AnswerAnalyticCopyWithImpl(
      _$_AnswerAnalytic _value, $Res Function(_$_AnswerAnalytic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = freezed,
    Object? totalQuestions = freezed,
    Object? correctAnswers = freezed,
    Object? correctAnswersPercentage = freezed,
  }) {
    return _then(_$_AnswerAnalytic(
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswers: freezed == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswersPercentage: freezed == correctAnswersPercentage
          ? _value.correctAnswersPercentage
          : correctAnswersPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_AnswerAnalytic implements _AnswerAnalytic {
  _$_AnswerAnalytic(
      {this.quizId,
      this.totalQuestions,
      this.correctAnswers,
      this.correctAnswersPercentage});

  @override
  final int? quizId;
  @override
  final int? totalQuestions;
  @override
  final int? correctAnswers;
  @override
  final double? correctAnswersPercentage;

  @override
  String toString() {
    return 'AnswerAnalytic(quizId: $quizId, totalQuestions: $totalQuestions, correctAnswers: $correctAnswers, correctAnswersPercentage: $correctAnswersPercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerAnalytic &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(
                    other.correctAnswersPercentage, correctAnswersPercentage) ||
                other.correctAnswersPercentage == correctAnswersPercentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quizId, totalQuestions,
      correctAnswers, correctAnswersPercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerAnalyticCopyWith<_$_AnswerAnalytic> get copyWith =>
      __$$_AnswerAnalyticCopyWithImpl<_$_AnswerAnalytic>(this, _$identity);
}

abstract class _AnswerAnalytic implements AnswerAnalytic {
  factory _AnswerAnalytic(
      {final int? quizId,
      final int? totalQuestions,
      final int? correctAnswers,
      final double? correctAnswersPercentage}) = _$_AnswerAnalytic;

  @override
  int? get quizId;
  @override
  int? get totalQuestions;
  @override
  int? get correctAnswers;
  @override
  double? get correctAnswersPercentage;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerAnalyticCopyWith<_$_AnswerAnalytic> get copyWith =>
      throw _privateConstructorUsedError;
}
