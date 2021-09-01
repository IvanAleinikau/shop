// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _InitAuthState initAuthState() {
    return _InitAuthState();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initAuthState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initAuthState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitAuthState value) initAuthState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitAuthState value)? initAuthState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitAuthStateCopyWith<$Res> {
  factory _$InitAuthStateCopyWith(
          _InitAuthState value, $Res Function(_InitAuthState) then) =
      __$InitAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitAuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitAuthStateCopyWith<$Res> {
  __$InitAuthStateCopyWithImpl(
      _InitAuthState _value, $Res Function(_InitAuthState) _then)
      : super(_value, (v) => _then(v as _InitAuthState));

  @override
  _InitAuthState get _value => super._value as _InitAuthState;
}

/// @nodoc

class _$_InitAuthState implements _InitAuthState {
  _$_InitAuthState();

  @override
  String toString() {
    return 'AuthState.initAuthState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initAuthState,
  }) {
    return initAuthState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initAuthState,
    required TResult orElse(),
  }) {
    if (initAuthState != null) {
      return initAuthState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitAuthState value) initAuthState,
  }) {
    return initAuthState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitAuthState value)? initAuthState,
    required TResult orElse(),
  }) {
    if (initAuthState != null) {
      return initAuthState(this);
    }
    return orElse();
  }
}

abstract class _InitAuthState implements AuthState {
  factory _InitAuthState() = _$_InitAuthState;
}
