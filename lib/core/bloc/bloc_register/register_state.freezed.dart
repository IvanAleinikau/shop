// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _InitRegisterState initRegisterState() {
    return _InitRegisterState();
  }

  _Created created() {
    return _Created();
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initRegisterState,
    required TResult Function() created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initRegisterState,
    TResult Function()? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitRegisterState value) initRegisterState,
    required TResult Function(_Created value) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitRegisterState value)? initRegisterState,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;
}

/// @nodoc
abstract class _$InitRegisterStateCopyWith<$Res> {
  factory _$InitRegisterStateCopyWith(
          _InitRegisterState value, $Res Function(_InitRegisterState) then) =
      __$InitRegisterStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitRegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$InitRegisterStateCopyWith<$Res> {
  __$InitRegisterStateCopyWithImpl(
      _InitRegisterState _value, $Res Function(_InitRegisterState) _then)
      : super(_value, (v) => _then(v as _InitRegisterState));

  @override
  _InitRegisterState get _value => super._value as _InitRegisterState;
}

/// @nodoc

class _$_InitRegisterState implements _InitRegisterState {
  _$_InitRegisterState();

  @override
  String toString() {
    return 'RegisterState.initRegisterState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitRegisterState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initRegisterState,
    required TResult Function() created,
  }) {
    return initRegisterState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initRegisterState,
    TResult Function()? created,
    required TResult orElse(),
  }) {
    if (initRegisterState != null) {
      return initRegisterState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitRegisterState value) initRegisterState,
    required TResult Function(_Created value) created,
  }) {
    return initRegisterState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitRegisterState value)? initRegisterState,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (initRegisterState != null) {
      return initRegisterState(this);
    }
    return orElse();
  }
}

abstract class _InitRegisterState implements RegisterState {
  factory _InitRegisterState() = _$_InitRegisterState;
}

/// @nodoc
abstract class _$CreatedCopyWith<$Res> {
  factory _$CreatedCopyWith(_Created value, $Res Function(_Created) then) =
      __$CreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreatedCopyWithImpl<$Res> extends _$RegisterStateCopyWithImpl<$Res>
    implements _$CreatedCopyWith<$Res> {
  __$CreatedCopyWithImpl(_Created _value, $Res Function(_Created) _then)
      : super(_value, (v) => _then(v as _Created));

  @override
  _Created get _value => super._value as _Created;
}

/// @nodoc

class _$_Created implements _Created {
  _$_Created();

  @override
  String toString() {
    return 'RegisterState.created()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Created);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initRegisterState,
    required TResult Function() created,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initRegisterState,
    TResult Function()? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitRegisterState value) initRegisterState,
    required TResult Function(_Created value) created,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitRegisterState value)? initRegisterState,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements RegisterState {
  factory _Created() = _$_Created;
}
