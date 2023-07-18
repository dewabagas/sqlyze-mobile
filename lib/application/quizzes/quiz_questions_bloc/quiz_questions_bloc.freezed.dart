// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_questions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizQuestionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quizId) getQuizQuestions,
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quizId)? getQuizQuestions,
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quizId)? getQuizQuestions,
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuizQuestions value) getQuizQuestions,
    required TResult Function(_NextQuestion value) nextQuestion,
    required TResult Function(_PreviousQuestion value) previousQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuizQuestions value)? getQuizQuestions,
    TResult? Function(_NextQuestion value)? nextQuestion,
    TResult? Function(_PreviousQuestion value)? previousQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuizQuestions value)? getQuizQuestions,
    TResult Function(_NextQuestion value)? nextQuestion,
    TResult Function(_PreviousQuestion value)? previousQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizQuestionsEventCopyWith<$Res> {
  factory $QuizQuestionsEventCopyWith(
          QuizQuestionsEvent value, $Res Function(QuizQuestionsEvent) then) =
      _$QuizQuestionsEventCopyWithImpl<$Res, QuizQuestionsEvent>;
}

/// @nodoc
class _$QuizQuestionsEventCopyWithImpl<$Res, $Val extends QuizQuestionsEvent>
    implements $QuizQuestionsEventCopyWith<$Res> {
  _$QuizQuestionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetQuizQuestionsCopyWith<$Res> {
  factory _$$_GetQuizQuestionsCopyWith(
          _$_GetQuizQuestions value, $Res Function(_$_GetQuizQuestions) then) =
      __$$_GetQuizQuestionsCopyWithImpl<$Res>;
  @useResult
  $Res call({int quizId});
}

/// @nodoc
class __$$_GetQuizQuestionsCopyWithImpl<$Res>
    extends _$QuizQuestionsEventCopyWithImpl<$Res, _$_GetQuizQuestions>
    implements _$$_GetQuizQuestionsCopyWith<$Res> {
  __$$_GetQuizQuestionsCopyWithImpl(
      _$_GetQuizQuestions _value, $Res Function(_$_GetQuizQuestions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = null,
  }) {
    return _then(_$_GetQuizQuestions(
      null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetQuizQuestions implements _GetQuizQuestions {
  const _$_GetQuizQuestions(this.quizId);

  @override
  final int quizId;

  @override
  String toString() {
    return 'QuizQuestionsEvent.getQuizQuestions(quizId: $quizId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetQuizQuestions &&
            (identical(other.quizId, quizId) || other.quizId == quizId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quizId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetQuizQuestionsCopyWith<_$_GetQuizQuestions> get copyWith =>
      __$$_GetQuizQuestionsCopyWithImpl<_$_GetQuizQuestions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quizId) getQuizQuestions,
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
  }) {
    return getQuizQuestions(quizId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quizId)? getQuizQuestions,
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
  }) {
    return getQuizQuestions?.call(quizId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quizId)? getQuizQuestions,
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    required TResult orElse(),
  }) {
    if (getQuizQuestions != null) {
      return getQuizQuestions(quizId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuizQuestions value) getQuizQuestions,
    required TResult Function(_NextQuestion value) nextQuestion,
    required TResult Function(_PreviousQuestion value) previousQuestion,
  }) {
    return getQuizQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuizQuestions value)? getQuizQuestions,
    TResult? Function(_NextQuestion value)? nextQuestion,
    TResult? Function(_PreviousQuestion value)? previousQuestion,
  }) {
    return getQuizQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuizQuestions value)? getQuizQuestions,
    TResult Function(_NextQuestion value)? nextQuestion,
    TResult Function(_PreviousQuestion value)? previousQuestion,
    required TResult orElse(),
  }) {
    if (getQuizQuestions != null) {
      return getQuizQuestions(this);
    }
    return orElse();
  }
}

abstract class _GetQuizQuestions implements QuizQuestionsEvent {
  const factory _GetQuizQuestions(final int quizId) = _$_GetQuizQuestions;

  int get quizId;
  @JsonKey(ignore: true)
  _$$_GetQuizQuestionsCopyWith<_$_GetQuizQuestions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextQuestionCopyWith<$Res> {
  factory _$$_NextQuestionCopyWith(
          _$_NextQuestion value, $Res Function(_$_NextQuestion) then) =
      __$$_NextQuestionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextQuestionCopyWithImpl<$Res>
    extends _$QuizQuestionsEventCopyWithImpl<$Res, _$_NextQuestion>
    implements _$$_NextQuestionCopyWith<$Res> {
  __$$_NextQuestionCopyWithImpl(
      _$_NextQuestion _value, $Res Function(_$_NextQuestion) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextQuestion implements _NextQuestion {
  const _$_NextQuestion();

  @override
  String toString() {
    return 'QuizQuestionsEvent.nextQuestion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NextQuestion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quizId) getQuizQuestions,
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
  }) {
    return nextQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quizId)? getQuizQuestions,
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
  }) {
    return nextQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quizId)? getQuizQuestions,
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuizQuestions value) getQuizQuestions,
    required TResult Function(_NextQuestion value) nextQuestion,
    required TResult Function(_PreviousQuestion value) previousQuestion,
  }) {
    return nextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuizQuestions value)? getQuizQuestions,
    TResult? Function(_NextQuestion value)? nextQuestion,
    TResult? Function(_PreviousQuestion value)? previousQuestion,
  }) {
    return nextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuizQuestions value)? getQuizQuestions,
    TResult Function(_NextQuestion value)? nextQuestion,
    TResult Function(_PreviousQuestion value)? previousQuestion,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion(this);
    }
    return orElse();
  }
}

abstract class _NextQuestion implements QuizQuestionsEvent {
  const factory _NextQuestion() = _$_NextQuestion;
}

/// @nodoc
abstract class _$$_PreviousQuestionCopyWith<$Res> {
  factory _$$_PreviousQuestionCopyWith(
          _$_PreviousQuestion value, $Res Function(_$_PreviousQuestion) then) =
      __$$_PreviousQuestionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PreviousQuestionCopyWithImpl<$Res>
    extends _$QuizQuestionsEventCopyWithImpl<$Res, _$_PreviousQuestion>
    implements _$$_PreviousQuestionCopyWith<$Res> {
  __$$_PreviousQuestionCopyWithImpl(
      _$_PreviousQuestion _value, $Res Function(_$_PreviousQuestion) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PreviousQuestion implements _PreviousQuestion {
  const _$_PreviousQuestion();

  @override
  String toString() {
    return 'QuizQuestionsEvent.previousQuestion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PreviousQuestion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quizId) getQuizQuestions,
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
  }) {
    return previousQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quizId)? getQuizQuestions,
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
  }) {
    return previousQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quizId)? getQuizQuestions,
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    required TResult orElse(),
  }) {
    if (previousQuestion != null) {
      return previousQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuizQuestions value) getQuizQuestions,
    required TResult Function(_NextQuestion value) nextQuestion,
    required TResult Function(_PreviousQuestion value) previousQuestion,
  }) {
    return previousQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuizQuestions value)? getQuizQuestions,
    TResult? Function(_NextQuestion value)? nextQuestion,
    TResult? Function(_PreviousQuestion value)? previousQuestion,
  }) {
    return previousQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuizQuestions value)? getQuizQuestions,
    TResult Function(_NextQuestion value)? nextQuestion,
    TResult Function(_PreviousQuestion value)? previousQuestion,
    required TResult orElse(),
  }) {
    if (previousQuestion != null) {
      return previousQuestion(this);
    }
    return orElse();
  }
}

abstract class _PreviousQuestion implements QuizQuestionsEvent {
  const factory _PreviousQuestion() = _$_PreviousQuestion;
}

/// @nodoc
mixin _$QuizQuestionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)
        loadSuccess,
    required TResult Function(String? message) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)?
        loadSuccess,
    TResult? Function(String? message)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)?
        loadSuccess,
    TResult Function(String? message)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizQuestionsStateCopyWith<$Res> {
  factory $QuizQuestionsStateCopyWith(
          QuizQuestionsState value, $Res Function(QuizQuestionsState) then) =
      _$QuizQuestionsStateCopyWithImpl<$Res, QuizQuestionsState>;
}

/// @nodoc
class _$QuizQuestionsStateCopyWithImpl<$Res, $Val extends QuizQuestionsState>
    implements $QuizQuestionsStateCopyWith<$Res> {
  _$QuizQuestionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$QuizQuestionsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'QuizQuestionsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)
        loadSuccess,
    required TResult Function(String? message) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)?
        loadSuccess,
    TResult? Function(String? message)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)?
        loadSuccess,
    TResult Function(String? message)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuizQuestionsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$QuizQuestionsStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'QuizQuestionsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)
        loadSuccess,
    required TResult Function(String? message) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)?
        loadSuccess,
    TResult? Function(String? message)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)?
        loadSuccess,
    TResult Function(String? message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements QuizQuestionsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentQuestionIndex, List<QuizQuestion>? quizQuestions});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$QuizQuestionsStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentQuestionIndex = null,
    Object? quizQuestions = freezed,
  }) {
    return _then(_$_LoadSuccess(
      null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == quizQuestions
          ? _value._quizQuestions
          : quizQuestions // ignore: cast_nullable_to_non_nullable
              as List<QuizQuestion>?,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(
      this.currentQuestionIndex, final List<QuizQuestion>? quizQuestions)
      : _quizQuestions = quizQuestions;

  @override
  final int currentQuestionIndex;
  final List<QuizQuestion>? _quizQuestions;
  @override
  List<QuizQuestion>? get quizQuestions {
    final value = _quizQuestions;
    if (value == null) return null;
    if (_quizQuestions is EqualUnmodifiableListView) return _quizQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuizQuestionsState.loadSuccess(currentQuestionIndex: $currentQuestionIndex, quizQuestions: $quizQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.currentQuestionIndex, currentQuestionIndex) ||
                other.currentQuestionIndex == currentQuestionIndex) &&
            const DeepCollectionEquality()
                .equals(other._quizQuestions, _quizQuestions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentQuestionIndex,
      const DeepCollectionEquality().hash(_quizQuestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)
        loadSuccess,
    required TResult Function(String? message) loadFailure,
  }) {
    return loadSuccess(currentQuestionIndex, quizQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)?
        loadSuccess,
    TResult? Function(String? message)? loadFailure,
  }) {
    return loadSuccess?.call(currentQuestionIndex, quizQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)?
        loadSuccess,
    TResult Function(String? message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(currentQuestionIndex, quizQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements QuizQuestionsState {
  const factory _LoadSuccess(final int currentQuestionIndex,
      final List<QuizQuestion>? quizQuestions) = _$_LoadSuccess;

  int get currentQuestionIndex;
  List<QuizQuestion>? get quizQuestions;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$QuizQuestionsStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_LoadFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'QuizQuestionsState.loadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)
        loadSuccess,
    required TResult Function(String? message) loadFailure,
  }) {
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)?
        loadSuccess,
    TResult? Function(String? message)? loadFailure,
  }) {
    return loadFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            int currentQuestionIndex, List<QuizQuestion>? quizQuestions)?
        loadSuccess,
    TResult Function(String? message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements QuizQuestionsState {
  const factory _LoadFailure(final String? message) = _$_LoadFailure;

  String? get message;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
