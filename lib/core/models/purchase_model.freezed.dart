// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'purchase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PurchaseTearOff {
  const _$PurchaseTearOff();

  _Purchase call(
      {required String user,
      required bool isActive,
      required VinylRecord vinylRecord,
      required int count}) {
    return _Purchase(
      user: user,
      isActive: isActive,
      vinylRecord: vinylRecord,
      count: count,
    );
  }
}

/// @nodoc
const $Purchase = _$PurchaseTearOff();

/// @nodoc
mixin _$Purchase {
  String get user => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  VinylRecord get vinylRecord => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PurchaseCopyWith<Purchase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseCopyWith<$Res> {
  factory $PurchaseCopyWith(Purchase value, $Res Function(Purchase) then) =
      _$PurchaseCopyWithImpl<$Res>;
  $Res call({String user, bool isActive, VinylRecord vinylRecord, int count});

  $VinylRecordCopyWith<$Res> get vinylRecord;
}

/// @nodoc
class _$PurchaseCopyWithImpl<$Res> implements $PurchaseCopyWith<$Res> {
  _$PurchaseCopyWithImpl(this._value, this._then);

  final Purchase _value;
  // ignore: unused_field
  final $Res Function(Purchase) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? isActive = freezed,
    Object? vinylRecord = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      vinylRecord: vinylRecord == freezed
          ? _value.vinylRecord
          : vinylRecord // ignore: cast_nullable_to_non_nullable
              as VinylRecord,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $VinylRecordCopyWith<$Res> get vinylRecord {
    return $VinylRecordCopyWith<$Res>(_value.vinylRecord, (value) {
      return _then(_value.copyWith(vinylRecord: value));
    });
  }
}

/// @nodoc
abstract class _$PurchaseCopyWith<$Res> implements $PurchaseCopyWith<$Res> {
  factory _$PurchaseCopyWith(_Purchase value, $Res Function(_Purchase) then) =
      __$PurchaseCopyWithImpl<$Res>;
  @override
  $Res call({String user, bool isActive, VinylRecord vinylRecord, int count});

  @override
  $VinylRecordCopyWith<$Res> get vinylRecord;
}

/// @nodoc
class __$PurchaseCopyWithImpl<$Res> extends _$PurchaseCopyWithImpl<$Res>
    implements _$PurchaseCopyWith<$Res> {
  __$PurchaseCopyWithImpl(_Purchase _value, $Res Function(_Purchase) _then)
      : super(_value, (v) => _then(v as _Purchase));

  @override
  _Purchase get _value => super._value as _Purchase;

  @override
  $Res call({
    Object? user = freezed,
    Object? isActive = freezed,
    Object? vinylRecord = freezed,
    Object? count = freezed,
  }) {
    return _then(_Purchase(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      vinylRecord: vinylRecord == freezed
          ? _value.vinylRecord
          : vinylRecord // ignore: cast_nullable_to_non_nullable
              as VinylRecord,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Purchase implements _Purchase {
  _$_Purchase(
      {required this.user,
      required this.isActive,
      required this.vinylRecord,
      required this.count});

  @override
  final String user;
  @override
  final bool isActive;
  @override
  final VinylRecord vinylRecord;
  @override
  final int count;

  @override
  String toString() {
    return 'Purchase(user: $user, isActive: $isActive, vinylRecord: $vinylRecord, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Purchase &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.vinylRecord, vinylRecord) ||
                const DeepCollectionEquality()
                    .equals(other.vinylRecord, vinylRecord)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(vinylRecord) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$PurchaseCopyWith<_Purchase> get copyWith =>
      __$PurchaseCopyWithImpl<_Purchase>(this, _$identity);
}

abstract class _Purchase implements Purchase {
  factory _Purchase(
      {required String user,
      required bool isActive,
      required VinylRecord vinylRecord,
      required int count}) = _$_Purchase;

  @override
  String get user => throw _privateConstructorUsedError;
  @override
  bool get isActive => throw _privateConstructorUsedError;
  @override
  VinylRecord get vinylRecord => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseCopyWith<_Purchase> get copyWith =>
      throw _privateConstructorUsedError;
}
