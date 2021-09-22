// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'purchase_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PurchaseEventTearOff {
  const _$PurchaseEventTearOff();

  FetchHistory fetchHistory() {
    return FetchHistory();
  }

  AddPurchase addPurchase(List<Purchase> list) {
    return AddPurchase(
      list,
    );
  }
}

/// @nodoc
const $PurchaseEvent = _$PurchaseEventTearOff();

/// @nodoc
mixin _$PurchaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHistory,
    required TResult Function(List<Purchase> list) addPurchase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHistory,
    TResult Function(List<Purchase> list)? addPurchase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHistory value) fetchHistory,
    required TResult Function(AddPurchase value) addPurchase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHistory value)? fetchHistory,
    TResult Function(AddPurchase value)? addPurchase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseEventCopyWith<$Res> {
  factory $PurchaseEventCopyWith(
          PurchaseEvent value, $Res Function(PurchaseEvent) then) =
      _$PurchaseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PurchaseEventCopyWithImpl<$Res>
    implements $PurchaseEventCopyWith<$Res> {
  _$PurchaseEventCopyWithImpl(this._value, this._then);

  final PurchaseEvent _value;
  // ignore: unused_field
  final $Res Function(PurchaseEvent) _then;
}

/// @nodoc
abstract class $FetchHistoryCopyWith<$Res> {
  factory $FetchHistoryCopyWith(
          FetchHistory value, $Res Function(FetchHistory) then) =
      _$FetchHistoryCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchHistoryCopyWithImpl<$Res> extends _$PurchaseEventCopyWithImpl<$Res>
    implements $FetchHistoryCopyWith<$Res> {
  _$FetchHistoryCopyWithImpl(
      FetchHistory _value, $Res Function(FetchHistory) _then)
      : super(_value, (v) => _then(v as FetchHistory));

  @override
  FetchHistory get _value => super._value as FetchHistory;
}

/// @nodoc

class _$FetchHistory implements FetchHistory {
  _$FetchHistory();

  @override
  String toString() {
    return 'PurchaseEvent.fetchHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchHistory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHistory,
    required TResult Function(List<Purchase> list) addPurchase,
  }) {
    return fetchHistory();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHistory,
    TResult Function(List<Purchase> list)? addPurchase,
    required TResult orElse(),
  }) {
    if (fetchHistory != null) {
      return fetchHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHistory value) fetchHistory,
    required TResult Function(AddPurchase value) addPurchase,
  }) {
    return fetchHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHistory value)? fetchHistory,
    TResult Function(AddPurchase value)? addPurchase,
    required TResult orElse(),
  }) {
    if (fetchHistory != null) {
      return fetchHistory(this);
    }
    return orElse();
  }
}

abstract class FetchHistory implements PurchaseEvent {
  factory FetchHistory() = _$FetchHistory;
}

/// @nodoc
abstract class $AddPurchaseCopyWith<$Res> {
  factory $AddPurchaseCopyWith(
          AddPurchase value, $Res Function(AddPurchase) then) =
      _$AddPurchaseCopyWithImpl<$Res>;
  $Res call({List<Purchase> list});
}

/// @nodoc
class _$AddPurchaseCopyWithImpl<$Res> extends _$PurchaseEventCopyWithImpl<$Res>
    implements $AddPurchaseCopyWith<$Res> {
  _$AddPurchaseCopyWithImpl(
      AddPurchase _value, $Res Function(AddPurchase) _then)
      : super(_value, (v) => _then(v as AddPurchase));

  @override
  AddPurchase get _value => super._value as AddPurchase;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(AddPurchase(
      list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Purchase>,
    ));
  }
}

/// @nodoc

class _$AddPurchase implements AddPurchase {
  _$AddPurchase(this.list);

  @override
  final List<Purchase> list;

  @override
  String toString() {
    return 'PurchaseEvent.addPurchase(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddPurchase &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  $AddPurchaseCopyWith<AddPurchase> get copyWith =>
      _$AddPurchaseCopyWithImpl<AddPurchase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchHistory,
    required TResult Function(List<Purchase> list) addPurchase,
  }) {
    return addPurchase(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchHistory,
    TResult Function(List<Purchase> list)? addPurchase,
    required TResult orElse(),
  }) {
    if (addPurchase != null) {
      return addPurchase(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHistory value) fetchHistory,
    required TResult Function(AddPurchase value) addPurchase,
  }) {
    return addPurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHistory value)? fetchHistory,
    TResult Function(AddPurchase value)? addPurchase,
    required TResult orElse(),
  }) {
    if (addPurchase != null) {
      return addPurchase(this);
    }
    return orElse();
  }
}

abstract class AddPurchase implements PurchaseEvent {
  factory AddPurchase(List<Purchase> list) = _$AddPurchase;

  List<Purchase> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddPurchaseCopyWith<AddPurchase> get copyWith =>
      throw _privateConstructorUsedError;
}
