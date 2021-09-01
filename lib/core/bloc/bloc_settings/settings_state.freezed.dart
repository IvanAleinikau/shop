// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingStateTearOff {
  const _$SettingStateTearOff();

  _InitState initState() {
    return _InitState();
  }

  _Loading loading() {
    return _Loading();
  }
}

/// @nodoc
const $SettingState = _$SettingStateTearOff();

/// @nodoc
mixin _$SettingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res> implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  final SettingState _value;
  // ignore: unused_field
  final $Res Function(SettingState) _then;
}

/// @nodoc
abstract class _$InitStateCopyWith<$Res> {
  factory _$InitStateCopyWith(
          _InitState value, $Res Function(_InitState) then) =
      __$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitStateCopyWithImpl<$Res> extends _$SettingStateCopyWithImpl<$Res>
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
    return 'SettingState.initState()';
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
  }) {
    return initState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loading,
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
    required TResult Function(_Loading value) loading,
  }) {
    return initState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState(this);
    }
    return orElse();
  }
}

abstract class _InitState implements SettingState {
  factory _InitState() = _$_InitState;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SettingStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  _$_Loading();

  @override
  String toString() {
    return 'SettingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loading,
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
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SettingState {
  factory _Loading() = _$_Loading;
}
