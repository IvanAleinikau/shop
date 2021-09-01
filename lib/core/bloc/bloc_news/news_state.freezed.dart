// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

  _InitState initState() {
    return _InitState();
  }

  _NewsLoading loading() {
    return _NewsLoading();
  }

  _NewsContent content(List<News> list) {
    return _NewsContent(
      list,
    );
  }

  _NewsContentEmpty contentEmpty() {
    return _NewsContentEmpty();
  }

  _NewsError error() {
    return _NewsError();
  }
}

/// @nodoc
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<News> list) content,
    required TResult Function() contentEmpty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loading,
    TResult Function(List<News> list)? content,
    TResult Function()? contentEmpty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_NewsLoading value) loading,
    required TResult Function(_NewsContent value) content,
    required TResult Function(_NewsContentEmpty value) contentEmpty,
    required TResult Function(_NewsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_NewsLoading value)? loading,
    TResult Function(_NewsContent value)? content,
    TResult Function(_NewsContentEmpty value)? contentEmpty,
    TResult Function(_NewsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;
}

/// @nodoc
abstract class _$InitStateCopyWith<$Res> {
  factory _$InitStateCopyWith(
          _InitState value, $Res Function(_InitState) then) =
      __$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
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
    return 'NewsState.initState()';
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
    required TResult Function(List<News> list) content,
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
    TResult Function(List<News> list)? content,
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
    required TResult Function(_NewsLoading value) loading,
    required TResult Function(_NewsContent value) content,
    required TResult Function(_NewsContentEmpty value) contentEmpty,
    required TResult Function(_NewsError value) error,
  }) {
    return initState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_NewsLoading value)? loading,
    TResult Function(_NewsContent value)? content,
    TResult Function(_NewsContentEmpty value)? contentEmpty,
    TResult Function(_NewsError value)? error,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState(this);
    }
    return orElse();
  }
}

abstract class _InitState implements NewsState {
  factory _InitState() = _$_InitState;
}

/// @nodoc
abstract class _$NewsLoadingCopyWith<$Res> {
  factory _$NewsLoadingCopyWith(
          _NewsLoading value, $Res Function(_NewsLoading) then) =
      __$NewsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$NewsLoadingCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsLoadingCopyWith<$Res> {
  __$NewsLoadingCopyWithImpl(
      _NewsLoading _value, $Res Function(_NewsLoading) _then)
      : super(_value, (v) => _then(v as _NewsLoading));

  @override
  _NewsLoading get _value => super._value as _NewsLoading;
}

/// @nodoc

class _$_NewsLoading implements _NewsLoading {
  _$_NewsLoading();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NewsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<News> list) content,
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
    TResult Function(List<News> list)? content,
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
    required TResult Function(_NewsLoading value) loading,
    required TResult Function(_NewsContent value) content,
    required TResult Function(_NewsContentEmpty value) contentEmpty,
    required TResult Function(_NewsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_NewsLoading value)? loading,
    TResult Function(_NewsContent value)? content,
    TResult Function(_NewsContentEmpty value)? contentEmpty,
    TResult Function(_NewsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NewsLoading implements NewsState {
  factory _NewsLoading() = _$_NewsLoading;
}

/// @nodoc
abstract class _$NewsContentCopyWith<$Res> {
  factory _$NewsContentCopyWith(
          _NewsContent value, $Res Function(_NewsContent) then) =
      __$NewsContentCopyWithImpl<$Res>;
  $Res call({List<News> list});
}

/// @nodoc
class __$NewsContentCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsContentCopyWith<$Res> {
  __$NewsContentCopyWithImpl(
      _NewsContent _value, $Res Function(_NewsContent) _then)
      : super(_value, (v) => _then(v as _NewsContent));

  @override
  _NewsContent get _value => super._value as _NewsContent;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_NewsContent(
      list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<News>,
    ));
  }
}

/// @nodoc

class _$_NewsContent implements _NewsContent {
  _$_NewsContent(this.list);

  @override
  final List<News> list;

  @override
  String toString() {
    return 'NewsState.content(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsContent &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$NewsContentCopyWith<_NewsContent> get copyWith =>
      __$NewsContentCopyWithImpl<_NewsContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<News> list) content,
    required TResult Function() contentEmpty,
    required TResult Function() error,
  }) {
    return content(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loading,
    TResult Function(List<News> list)? content,
    TResult Function()? contentEmpty,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_NewsLoading value) loading,
    required TResult Function(_NewsContent value) content,
    required TResult Function(_NewsContentEmpty value) contentEmpty,
    required TResult Function(_NewsError value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_NewsLoading value)? loading,
    TResult Function(_NewsContent value)? content,
    TResult Function(_NewsContentEmpty value)? contentEmpty,
    TResult Function(_NewsError value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _NewsContent implements NewsState {
  factory _NewsContent(List<News> list) = _$_NewsContent;

  List<News> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NewsContentCopyWith<_NewsContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NewsContentEmptyCopyWith<$Res> {
  factory _$NewsContentEmptyCopyWith(
          _NewsContentEmpty value, $Res Function(_NewsContentEmpty) then) =
      __$NewsContentEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$NewsContentEmptyCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsContentEmptyCopyWith<$Res> {
  __$NewsContentEmptyCopyWithImpl(
      _NewsContentEmpty _value, $Res Function(_NewsContentEmpty) _then)
      : super(_value, (v) => _then(v as _NewsContentEmpty));

  @override
  _NewsContentEmpty get _value => super._value as _NewsContentEmpty;
}

/// @nodoc

class _$_NewsContentEmpty implements _NewsContentEmpty {
  _$_NewsContentEmpty();

  @override
  String toString() {
    return 'NewsState.contentEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NewsContentEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<News> list) content,
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
    TResult Function(List<News> list)? content,
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
    required TResult Function(_NewsLoading value) loading,
    required TResult Function(_NewsContent value) content,
    required TResult Function(_NewsContentEmpty value) contentEmpty,
    required TResult Function(_NewsError value) error,
  }) {
    return contentEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_NewsLoading value)? loading,
    TResult Function(_NewsContent value)? content,
    TResult Function(_NewsContentEmpty value)? contentEmpty,
    TResult Function(_NewsError value)? error,
    required TResult orElse(),
  }) {
    if (contentEmpty != null) {
      return contentEmpty(this);
    }
    return orElse();
  }
}

abstract class _NewsContentEmpty implements NewsState {
  factory _NewsContentEmpty() = _$_NewsContentEmpty;
}

/// @nodoc
abstract class _$NewsErrorCopyWith<$Res> {
  factory _$NewsErrorCopyWith(
          _NewsError value, $Res Function(_NewsError) then) =
      __$NewsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$NewsErrorCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsErrorCopyWith<$Res> {
  __$NewsErrorCopyWithImpl(_NewsError _value, $Res Function(_NewsError) _then)
      : super(_value, (v) => _then(v as _NewsError));

  @override
  _NewsError get _value => super._value as _NewsError;
}

/// @nodoc

class _$_NewsError implements _NewsError {
  _$_NewsError();

  @override
  String toString() {
    return 'NewsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NewsError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<News> list) content,
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
    TResult Function(List<News> list)? content,
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
    required TResult Function(_NewsLoading value) loading,
    required TResult Function(_NewsContent value) content,
    required TResult Function(_NewsContentEmpty value) contentEmpty,
    required TResult Function(_NewsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_NewsLoading value)? loading,
    TResult Function(_NewsContent value)? content,
    TResult Function(_NewsContentEmpty value)? contentEmpty,
    TResult Function(_NewsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NewsError implements NewsState {
  factory _NewsError() = _$_NewsError;
}
