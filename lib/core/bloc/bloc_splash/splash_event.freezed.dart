// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'splash_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SplashEventTearOff {
  const _$SplashEventTearOff();

  CheckCurrentUser checkCurrentUser() {
    return CheckCurrentUser();
  }
}

/// @nodoc
const $SplashEvent = _$SplashEventTearOff();

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckCurrentUser value) checkCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckCurrentUser value)? checkCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res> implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  final SplashEvent _value;
  // ignore: unused_field
  final $Res Function(SplashEvent) _then;
}

/// @nodoc
abstract class $CheckCurrentUserCopyWith<$Res> {
  factory $CheckCurrentUserCopyWith(
          CheckCurrentUser value, $Res Function(CheckCurrentUser) then) =
      _$CheckCurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckCurrentUserCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $CheckCurrentUserCopyWith<$Res> {
  _$CheckCurrentUserCopyWithImpl(
      CheckCurrentUser _value, $Res Function(CheckCurrentUser) _then)
      : super(_value, (v) => _then(v as CheckCurrentUser));

  @override
  CheckCurrentUser get _value => super._value as CheckCurrentUser;
}

/// @nodoc

class _$CheckCurrentUser implements CheckCurrentUser {
  _$CheckCurrentUser();

  @override
  String toString() {
    return 'SplashEvent.checkCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckCurrentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkCurrentUser,
  }) {
    return checkCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkCurrentUser,
    required TResult orElse(),
  }) {
    if (checkCurrentUser != null) {
      return checkCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckCurrentUser value) checkCurrentUser,
  }) {
    return checkCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckCurrentUser value)? checkCurrentUser,
    required TResult orElse(),
  }) {
    if (checkCurrentUser != null) {
      return checkCurrentUser(this);
    }
    return orElse();
  }
}

abstract class CheckCurrentUser implements SplashEvent {
  factory CheckCurrentUser() = _$CheckCurrentUser;
}
