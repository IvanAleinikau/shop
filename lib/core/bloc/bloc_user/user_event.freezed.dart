// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

  FetchUser fetchUser() {
    return FetchUser();
  }

  ChangeGender changeGender(String gender) {
    return ChangeGender(
      gender,
    );
  }

  ChangeIndex changeIndex(int index) {
    return ChangeIndex(
      index,
    );
  }

  ChangeNames changeNames(String firstName, String surname) {
    return ChangeNames(
      firstName,
      surname,
    );
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUser,
    required TResult Function(String gender) changeGender,
    required TResult Function(int index) changeIndex,
    required TResult Function(String firstName, String surname) changeNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUser,
    TResult Function(String gender)? changeGender,
    TResult Function(int index)? changeIndex,
    TResult Function(String firstName, String surname)? changeNames,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUser value) fetchUser,
    required TResult Function(ChangeGender value) changeGender,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(ChangeNames value) changeNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUser value)? fetchUser,
    TResult Function(ChangeGender value)? changeGender,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(ChangeNames value)? changeNames,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class $FetchUserCopyWith<$Res> {
  factory $FetchUserCopyWith(FetchUser value, $Res Function(FetchUser) then) =
      _$FetchUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $FetchUserCopyWith<$Res> {
  _$FetchUserCopyWithImpl(FetchUser _value, $Res Function(FetchUser) _then)
      : super(_value, (v) => _then(v as FetchUser));

  @override
  FetchUser get _value => super._value as FetchUser;
}

/// @nodoc

class _$FetchUser implements FetchUser {
  _$FetchUser();

  @override
  String toString() {
    return 'UserEvent.fetchUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUser,
    required TResult Function(String gender) changeGender,
    required TResult Function(int index) changeIndex,
    required TResult Function(String firstName, String surname) changeNames,
  }) {
    return fetchUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUser,
    TResult Function(String gender)? changeGender,
    TResult Function(int index)? changeIndex,
    TResult Function(String firstName, String surname)? changeNames,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUser value) fetchUser,
    required TResult Function(ChangeGender value) changeGender,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(ChangeNames value) changeNames,
  }) {
    return fetchUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUser value)? fetchUser,
    TResult Function(ChangeGender value)? changeGender,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(ChangeNames value)? changeNames,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser(this);
    }
    return orElse();
  }
}

abstract class FetchUser implements UserEvent {
  factory FetchUser() = _$FetchUser;
}

/// @nodoc
abstract class $ChangeGenderCopyWith<$Res> {
  factory $ChangeGenderCopyWith(
          ChangeGender value, $Res Function(ChangeGender) then) =
      _$ChangeGenderCopyWithImpl<$Res>;
  $Res call({String gender});
}

/// @nodoc
class _$ChangeGenderCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $ChangeGenderCopyWith<$Res> {
  _$ChangeGenderCopyWithImpl(
      ChangeGender _value, $Res Function(ChangeGender) _then)
      : super(_value, (v) => _then(v as ChangeGender));

  @override
  ChangeGender get _value => super._value as ChangeGender;

  @override
  $Res call({
    Object? gender = freezed,
  }) {
    return _then(ChangeGender(
      gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeGender implements ChangeGender {
  _$ChangeGender(this.gender);

  @override
  final String gender;

  @override
  String toString() {
    return 'UserEvent.changeGender(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeGender &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gender);

  @JsonKey(ignore: true)
  @override
  $ChangeGenderCopyWith<ChangeGender> get copyWith =>
      _$ChangeGenderCopyWithImpl<ChangeGender>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUser,
    required TResult Function(String gender) changeGender,
    required TResult Function(int index) changeIndex,
    required TResult Function(String firstName, String surname) changeNames,
  }) {
    return changeGender(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUser,
    TResult Function(String gender)? changeGender,
    TResult Function(int index)? changeIndex,
    TResult Function(String firstName, String surname)? changeNames,
    required TResult orElse(),
  }) {
    if (changeGender != null) {
      return changeGender(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUser value) fetchUser,
    required TResult Function(ChangeGender value) changeGender,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(ChangeNames value) changeNames,
  }) {
    return changeGender(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUser value)? fetchUser,
    TResult Function(ChangeGender value)? changeGender,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(ChangeNames value)? changeNames,
    required TResult orElse(),
  }) {
    if (changeGender != null) {
      return changeGender(this);
    }
    return orElse();
  }
}

abstract class ChangeGender implements UserEvent {
  factory ChangeGender(String gender) = _$ChangeGender;

  String get gender => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeGenderCopyWith<ChangeGender> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeIndexCopyWith<$Res> {
  factory $ChangeIndexCopyWith(
          ChangeIndex value, $Res Function(ChangeIndex) then) =
      _$ChangeIndexCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$ChangeIndexCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $ChangeIndexCopyWith<$Res> {
  _$ChangeIndexCopyWithImpl(
      ChangeIndex _value, $Res Function(ChangeIndex) _then)
      : super(_value, (v) => _then(v as ChangeIndex));

  @override
  ChangeIndex get _value => super._value as ChangeIndex;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(ChangeIndex(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeIndex implements ChangeIndex {
  _$ChangeIndex(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'UserEvent.changeIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeIndex &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $ChangeIndexCopyWith<ChangeIndex> get copyWith =>
      _$ChangeIndexCopyWithImpl<ChangeIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUser,
    required TResult Function(String gender) changeGender,
    required TResult Function(int index) changeIndex,
    required TResult Function(String firstName, String surname) changeNames,
  }) {
    return changeIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUser,
    TResult Function(String gender)? changeGender,
    TResult Function(int index)? changeIndex,
    TResult Function(String firstName, String surname)? changeNames,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUser value) fetchUser,
    required TResult Function(ChangeGender value) changeGender,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(ChangeNames value) changeNames,
  }) {
    return changeIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUser value)? fetchUser,
    TResult Function(ChangeGender value)? changeGender,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(ChangeNames value)? changeNames,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeIndex implements UserEvent {
  factory ChangeIndex(int index) = _$ChangeIndex;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeIndexCopyWith<ChangeIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeNamesCopyWith<$Res> {
  factory $ChangeNamesCopyWith(
          ChangeNames value, $Res Function(ChangeNames) then) =
      _$ChangeNamesCopyWithImpl<$Res>;
  $Res call({String firstName, String surname});
}

/// @nodoc
class _$ChangeNamesCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $ChangeNamesCopyWith<$Res> {
  _$ChangeNamesCopyWithImpl(
      ChangeNames _value, $Res Function(ChangeNames) _then)
      : super(_value, (v) => _then(v as ChangeNames));

  @override
  ChangeNames get _value => super._value as ChangeNames;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? surname = freezed,
  }) {
    return _then(ChangeNames(
      firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeNames implements ChangeNames {
  _$ChangeNames(this.firstName, this.surname);

  @override
  final String firstName;
  @override
  final String surname;

  @override
  String toString() {
    return 'UserEvent.changeNames(firstName: $firstName, surname: $surname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeNames &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality().equals(other.surname, surname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(surname);

  @JsonKey(ignore: true)
  @override
  $ChangeNamesCopyWith<ChangeNames> get copyWith =>
      _$ChangeNamesCopyWithImpl<ChangeNames>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUser,
    required TResult Function(String gender) changeGender,
    required TResult Function(int index) changeIndex,
    required TResult Function(String firstName, String surname) changeNames,
  }) {
    return changeNames(firstName, surname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUser,
    TResult Function(String gender)? changeGender,
    TResult Function(int index)? changeIndex,
    TResult Function(String firstName, String surname)? changeNames,
    required TResult orElse(),
  }) {
    if (changeNames != null) {
      return changeNames(firstName, surname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUser value) fetchUser,
    required TResult Function(ChangeGender value) changeGender,
    required TResult Function(ChangeIndex value) changeIndex,
    required TResult Function(ChangeNames value) changeNames,
  }) {
    return changeNames(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUser value)? fetchUser,
    TResult Function(ChangeGender value)? changeGender,
    TResult Function(ChangeIndex value)? changeIndex,
    TResult Function(ChangeNames value)? changeNames,
    required TResult orElse(),
  }) {
    if (changeNames != null) {
      return changeNames(this);
    }
    return orElse();
  }
}

abstract class ChangeNames implements UserEvent {
  factory ChangeNames(String firstName, String surname) = _$ChangeNames;

  String get firstName => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeNamesCopyWith<ChangeNames> get copyWith =>
      throw _privateConstructorUsedError;
}
