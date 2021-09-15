// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomUserTearOff {
  const _$CustomUserTearOff();

  _CustomUser call(
      {required String email,
      required String firstName,
      required String surname,
      required String gender,
      required int postOfficeIndex}) {
    return _CustomUser(
      email: email,
      firstName: firstName,
      surname: surname,
      gender: gender,
      postOfficeIndex: postOfficeIndex,
    );
  }
}

/// @nodoc
const $CustomUser = _$CustomUserTearOff();

/// @nodoc
mixin _$CustomUser {
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  int get postOfficeIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomUserCopyWith<CustomUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomUserCopyWith<$Res> {
  factory $CustomUserCopyWith(
          CustomUser value, $Res Function(CustomUser) then) =
      _$CustomUserCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String firstName,
      String surname,
      String gender,
      int postOfficeIndex});
}

/// @nodoc
class _$CustomUserCopyWithImpl<$Res> implements $CustomUserCopyWith<$Res> {
  _$CustomUserCopyWithImpl(this._value, this._then);

  final CustomUser _value;
  // ignore: unused_field
  final $Res Function(CustomUser) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? surname = freezed,
    Object? gender = freezed,
    Object? postOfficeIndex = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      postOfficeIndex: postOfficeIndex == freezed
          ? _value.postOfficeIndex
          : postOfficeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CustomUserCopyWith<$Res> implements $CustomUserCopyWith<$Res> {
  factory _$CustomUserCopyWith(
          _CustomUser value, $Res Function(_CustomUser) then) =
      __$CustomUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String firstName,
      String surname,
      String gender,
      int postOfficeIndex});
}

/// @nodoc
class __$CustomUserCopyWithImpl<$Res> extends _$CustomUserCopyWithImpl<$Res>
    implements _$CustomUserCopyWith<$Res> {
  __$CustomUserCopyWithImpl(
      _CustomUser _value, $Res Function(_CustomUser) _then)
      : super(_value, (v) => _then(v as _CustomUser));

  @override
  _CustomUser get _value => super._value as _CustomUser;

  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? surname = freezed,
    Object? gender = freezed,
    Object? postOfficeIndex = freezed,
  }) {
    return _then(_CustomUser(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      postOfficeIndex: postOfficeIndex == freezed
          ? _value.postOfficeIndex
          : postOfficeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CustomUser implements _CustomUser {
  _$_CustomUser(
      {required this.email,
      required this.firstName,
      required this.surname,
      required this.gender,
      required this.postOfficeIndex});

  @override
  final String email;
  @override
  final String firstName;
  @override
  final String surname;
  @override
  final String gender;
  @override
  final int postOfficeIndex;

  @override
  String toString() {
    return 'CustomUser(email: $email, firstName: $firstName, surname: $surname, gender: $gender, postOfficeIndex: $postOfficeIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomUser &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.postOfficeIndex, postOfficeIndex) ||
                const DeepCollectionEquality()
                    .equals(other.postOfficeIndex, postOfficeIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(postOfficeIndex);

  @JsonKey(ignore: true)
  @override
  _$CustomUserCopyWith<_CustomUser> get copyWith =>
      __$CustomUserCopyWithImpl<_CustomUser>(this, _$identity);
}

abstract class _CustomUser implements CustomUser {
  factory _CustomUser(
      {required String email,
      required String firstName,
      required String surname,
      required String gender,
      required int postOfficeIndex}) = _$_CustomUser;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get surname => throw _privateConstructorUsedError;
  @override
  String get gender => throw _privateConstructorUsedError;
  @override
  int get postOfficeIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CustomUserCopyWith<_CustomUser> get copyWith =>
      throw _privateConstructorUsedError;
}
