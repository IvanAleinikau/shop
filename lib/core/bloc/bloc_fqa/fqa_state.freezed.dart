// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'fqa_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FqaStateTearOff {
  const _$FqaStateTearOff();

  _InitState initState() {
    return _InitState();
  }

  _FqaLoading loading() {
    return _FqaLoading();
  }

  _FqaContent content(List<QuestionAnswer> questionsAndAnswers) {
    return _FqaContent(
      questionsAndAnswers,
    );
  }

  _FqaContentEmpty contentEmpty() {
    return _FqaContentEmpty();
  }

  _FqaError error() {
    return _FqaError();
  }
}

/// @nodoc
const $FqaState = _$FqaStateTearOff();

/// @nodoc
mixin _$FqaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<QuestionAnswer> questionsAndAnswers) content,
    required TResult Function() contentEmpty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswer> questionsAndAnswers)? content,
    TResult Function()? contentEmpty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_FqaLoading value) loading,
    required TResult Function(_FqaContent value) content,
    required TResult Function(_FqaContentEmpty value) contentEmpty,
    required TResult Function(_FqaError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_FqaLoading value)? loading,
    TResult Function(_FqaContent value)? content,
    TResult Function(_FqaContentEmpty value)? contentEmpty,
    TResult Function(_FqaError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FqaStateCopyWith<$Res> {
  factory $FqaStateCopyWith(FqaState value, $Res Function(FqaState) then) =
      _$FqaStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FqaStateCopyWithImpl<$Res> implements $FqaStateCopyWith<$Res> {
  _$FqaStateCopyWithImpl(this._value, this._then);

  final FqaState _value;
  // ignore: unused_field
  final $Res Function(FqaState) _then;
}

/// @nodoc
abstract class _$InitStateCopyWith<$Res> {
  factory _$InitStateCopyWith(
          _InitState value, $Res Function(_InitState) then) =
      __$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitStateCopyWithImpl<$Res> extends _$FqaStateCopyWithImpl<$Res>
    implements _$InitStateCopyWith<$Res> {
  __$InitStateCopyWithImpl(_InitState _value, $Res Function(_InitState) _then)
      : super(_value, (v) => _then(v as _InitState));

  @override
  _InitState get _value => super._value as _InitState;
}

/// @nodoc

class _$_InitState implements _InitState {
  _$_InitState();

  @override
  String toString() {
    return 'FqaState.initState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<QuestionAnswer> questionsAndAnswers) content,
    required TResult Function() contentEmpty,
    required TResult Function() error,
  }) {
    return initState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswer> questionsAndAnswers)? content,
    TResult Function()? contentEmpty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_FqaLoading value) loading,
    required TResult Function(_FqaContent value) content,
    required TResult Function(_FqaContentEmpty value) contentEmpty,
    required TResult Function(_FqaError value) error,
  }) {
    return initState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_FqaLoading value)? loading,
    TResult Function(_FqaContent value)? content,
    TResult Function(_FqaContentEmpty value)? contentEmpty,
    TResult Function(_FqaError value)? error,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState(this);
    }
    return orElse();
  }
}

abstract class _InitState implements FqaState {
  factory _InitState() = _$_InitState;
}

/// @nodoc
abstract class _$FqaLoadingCopyWith<$Res> {
  factory _$FqaLoadingCopyWith(
          _FqaLoading value, $Res Function(_FqaLoading) then) =
      __$FqaLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$FqaLoadingCopyWithImpl<$Res> extends _$FqaStateCopyWithImpl<$Res>
    implements _$FqaLoadingCopyWith<$Res> {
  __$FqaLoadingCopyWithImpl(
      _FqaLoading _value, $Res Function(_FqaLoading) _then)
      : super(_value, (v) => _then(v as _FqaLoading));

  @override
  _FqaLoading get _value => super._value as _FqaLoading;
}

/// @nodoc

class _$_FqaLoading implements _FqaLoading {
  _$_FqaLoading();

  @override
  String toString() {
    return 'FqaState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FqaLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<QuestionAnswer> questionsAndAnswers) content,
    required TResult Function() contentEmpty,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswer> questionsAndAnswers)? content,
    TResult Function()? contentEmpty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_FqaLoading value) loading,
    required TResult Function(_FqaContent value) content,
    required TResult Function(_FqaContentEmpty value) contentEmpty,
    required TResult Function(_FqaError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_FqaLoading value)? loading,
    TResult Function(_FqaContent value)? content,
    TResult Function(_FqaContentEmpty value)? contentEmpty,
    TResult Function(_FqaError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FqaLoading implements FqaState {
  factory _FqaLoading() = _$_FqaLoading;
}

/// @nodoc
abstract class _$FqaContentCopyWith<$Res> {
  factory _$FqaContentCopyWith(
          _FqaContent value, $Res Function(_FqaContent) then) =
      __$FqaContentCopyWithImpl<$Res>;
  $Res call({List<QuestionAnswer> questionsAndAnswers});
}

/// @nodoc
class __$FqaContentCopyWithImpl<$Res> extends _$FqaStateCopyWithImpl<$Res>
    implements _$FqaContentCopyWith<$Res> {
  __$FqaContentCopyWithImpl(
      _FqaContent _value, $Res Function(_FqaContent) _then)
      : super(_value, (v) => _then(v as _FqaContent));

  @override
  _FqaContent get _value => super._value as _FqaContent;

  @override
  $Res call({
    Object? questionsAndAnswers = freezed,
  }) {
    return _then(_FqaContent(
      questionsAndAnswers == freezed
          ? _value.questionsAndAnswers
          : questionsAndAnswers // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswer>,
    ));
  }
}

/// @nodoc

class _$_FqaContent implements _FqaContent {
  _$_FqaContent(this.questionsAndAnswers);

  @override
  final List<QuestionAnswer> questionsAndAnswers;

  @override
  String toString() {
    return 'FqaState.content(questionsAndAnswers: $questionsAndAnswers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FqaContent &&
            (identical(other.questionsAndAnswers, questionsAndAnswers) ||
                const DeepCollectionEquality()
                    .equals(other.questionsAndAnswers, questionsAndAnswers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(questionsAndAnswers);

  @JsonKey(ignore: true)
  @override
  _$FqaContentCopyWith<_FqaContent> get copyWith =>
      __$FqaContentCopyWithImpl<_FqaContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<QuestionAnswer> questionsAndAnswers) content,
    required TResult Function() contentEmpty,
    required TResult Function() error,
  }) {
    return content(questionsAndAnswers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswer> questionsAndAnswers)? content,
    TResult Function()? contentEmpty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(questionsAndAnswers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_FqaLoading value) loading,
    required TResult Function(_FqaContent value) content,
    required TResult Function(_FqaContentEmpty value) contentEmpty,
    required TResult Function(_FqaError value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_FqaLoading value)? loading,
    TResult Function(_FqaContent value)? content,
    TResult Function(_FqaContentEmpty value)? contentEmpty,
    TResult Function(_FqaError value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _FqaContent implements FqaState {
  factory _FqaContent(List<QuestionAnswer> questionsAndAnswers) = _$_FqaContent;

  List<QuestionAnswer> get questionsAndAnswers =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FqaContentCopyWith<_FqaContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FqaContentEmptyCopyWith<$Res> {
  factory _$FqaContentEmptyCopyWith(
          _FqaContentEmpty value, $Res Function(_FqaContentEmpty) then) =
      __$FqaContentEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$FqaContentEmptyCopyWithImpl<$Res> extends _$FqaStateCopyWithImpl<$Res>
    implements _$FqaContentEmptyCopyWith<$Res> {
  __$FqaContentEmptyCopyWithImpl(
      _FqaContentEmpty _value, $Res Function(_FqaContentEmpty) _then)
      : super(_value, (v) => _then(v as _FqaContentEmpty));

  @override
  _FqaContentEmpty get _value => super._value as _FqaContentEmpty;
}

/// @nodoc

class _$_FqaContentEmpty implements _FqaContentEmpty {
  _$_FqaContentEmpty();

  @override
  String toString() {
    return 'FqaState.contentEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FqaContentEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<QuestionAnswer> questionsAndAnswers) content,
    required TResult Function() contentEmpty,
    required TResult Function() error,
  }) {
    return contentEmpty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswer> questionsAndAnswers)? content,
    TResult Function()? contentEmpty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (contentEmpty != null) {
      return contentEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_FqaLoading value) loading,
    required TResult Function(_FqaContent value) content,
    required TResult Function(_FqaContentEmpty value) contentEmpty,
    required TResult Function(_FqaError value) error,
  }) {
    return contentEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_FqaLoading value)? loading,
    TResult Function(_FqaContent value)? content,
    TResult Function(_FqaContentEmpty value)? contentEmpty,
    TResult Function(_FqaError value)? error,
    required TResult orElse(),
  }) {
    if (contentEmpty != null) {
      return contentEmpty(this);
    }
    return orElse();
  }
}

abstract class _FqaContentEmpty implements FqaState {
  factory _FqaContentEmpty() = _$_FqaContentEmpty;
}

/// @nodoc
abstract class _$FqaErrorCopyWith<$Res> {
  factory _$FqaErrorCopyWith(_FqaError value, $Res Function(_FqaError) then) =
      __$FqaErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$FqaErrorCopyWithImpl<$Res> extends _$FqaStateCopyWithImpl<$Res>
    implements _$FqaErrorCopyWith<$Res> {
  __$FqaErrorCopyWithImpl(_FqaError _value, $Res Function(_FqaError) _then)
      : super(_value, (v) => _then(v as _FqaError));

  @override
  _FqaError get _value => super._value as _FqaError;
}

/// @nodoc

class _$_FqaError implements _FqaError {
  _$_FqaError();

  @override
  String toString() {
    return 'FqaState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FqaError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<QuestionAnswer> questionsAndAnswers) content,
    required TResult Function() contentEmpty,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loading,
    TResult Function(List<QuestionAnswer> questionsAndAnswers)? content,
    TResult Function()? contentEmpty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_FqaLoading value) loading,
    required TResult Function(_FqaContent value) content,
    required TResult Function(_FqaContentEmpty value) contentEmpty,
    required TResult Function(_FqaError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_FqaLoading value)? loading,
    TResult Function(_FqaContent value)? content,
    TResult Function(_FqaContentEmpty value)? contentEmpty,
    TResult Function(_FqaError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FqaError implements FqaState {
  factory _FqaError() = _$_FqaError;
}
