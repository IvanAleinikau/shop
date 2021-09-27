// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shopping_cart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShoppingCartEventTearOff {
  const _$ShoppingCartEventTearOff();

  FetchShoppingCartEvent fetchShoppingCart() {
    return FetchShoppingCartEvent();
  }

  ShoppingCartEmpty empty() {
    return ShoppingCartEmpty();
  }

  CountIncrement increment(int count, int index) {
    return CountIncrement(
      count,
      index,
    );
  }

  CountDecrement decrement(int count, int index) {
    return CountDecrement(
      count,
      index,
    );
  }

  Delete delete(int index) {
    return Delete(
      index,
    );
  }

  Clear clear() {
    return Clear();
  }

  CreateShoppingCart createShoppingCart(String name, String author, String year,
      String description, String cost, String image) {
    return CreateShoppingCart(
      name,
      author,
      year,
      description,
      cost,
      image,
    );
  }
}

/// @nodoc
const $ShoppingCartEvent = _$ShoppingCartEventTearOff();

/// @nodoc
mixin _$ShoppingCartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchShoppingCart,
    required TResult Function() empty,
    required TResult Function(int count, int index) increment,
    required TResult Function(int count, int index) decrement,
    required TResult Function(int index) delete,
    required TResult Function() clear,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchShoppingCart,
    TResult Function()? empty,
    TResult Function(int count, int index)? increment,
    TResult Function(int count, int index)? decrement,
    TResult Function(int index)? delete,
    TResult Function()? clear,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createShoppingCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchShoppingCartEvent value) fetchShoppingCart,
    required TResult Function(ShoppingCartEmpty value) empty,
    required TResult Function(CountIncrement value) increment,
    required TResult Function(CountDecrement value) decrement,
    required TResult Function(Delete value) delete,
    required TResult Function(Clear value) clear,
    required TResult Function(CreateShoppingCart value) createShoppingCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchShoppingCartEvent value)? fetchShoppingCart,
    TResult Function(ShoppingCartEmpty value)? empty,
    TResult Function(CountIncrement value)? increment,
    TResult Function(CountDecrement value)? decrement,
    TResult Function(Delete value)? delete,
    TResult Function(Clear value)? clear,
    TResult Function(CreateShoppingCart value)? createShoppingCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartEventCopyWith<$Res> {
  factory $ShoppingCartEventCopyWith(
          ShoppingCartEvent value, $Res Function(ShoppingCartEvent) then) =
      _$ShoppingCartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShoppingCartEventCopyWithImpl<$Res>
    implements $ShoppingCartEventCopyWith<$Res> {
  _$ShoppingCartEventCopyWithImpl(this._value, this._then);

  final ShoppingCartEvent _value;
  // ignore: unused_field
  final $Res Function(ShoppingCartEvent) _then;
}

/// @nodoc
abstract class $FetchShoppingCartEventCopyWith<$Res> {
  factory $FetchShoppingCartEventCopyWith(FetchShoppingCartEvent value,
          $Res Function(FetchShoppingCartEvent) then) =
      _$FetchShoppingCartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchShoppingCartEventCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res>
    implements $FetchShoppingCartEventCopyWith<$Res> {
  _$FetchShoppingCartEventCopyWithImpl(FetchShoppingCartEvent _value,
      $Res Function(FetchShoppingCartEvent) _then)
      : super(_value, (v) => _then(v as FetchShoppingCartEvent));

  @override
  FetchShoppingCartEvent get _value => super._value as FetchShoppingCartEvent;
}

/// @nodoc

class _$FetchShoppingCartEvent implements FetchShoppingCartEvent {
  _$FetchShoppingCartEvent();

  @override
  String toString() {
    return 'ShoppingCartEvent.fetchShoppingCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchShoppingCartEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchShoppingCart,
    required TResult Function() empty,
    required TResult Function(int count, int index) increment,
    required TResult Function(int count, int index) decrement,
    required TResult Function(int index) delete,
    required TResult Function() clear,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createShoppingCart,
  }) {
    return fetchShoppingCart();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchShoppingCart,
    TResult Function()? empty,
    TResult Function(int count, int index)? increment,
    TResult Function(int count, int index)? decrement,
    TResult Function(int index)? delete,
    TResult Function()? clear,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createShoppingCart,
    required TResult orElse(),
  }) {
    if (fetchShoppingCart != null) {
      return fetchShoppingCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchShoppingCartEvent value) fetchShoppingCart,
    required TResult Function(ShoppingCartEmpty value) empty,
    required TResult Function(CountIncrement value) increment,
    required TResult Function(CountDecrement value) decrement,
    required TResult Function(Delete value) delete,
    required TResult Function(Clear value) clear,
    required TResult Function(CreateShoppingCart value) createShoppingCart,
  }) {
    return fetchShoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchShoppingCartEvent value)? fetchShoppingCart,
    TResult Function(ShoppingCartEmpty value)? empty,
    TResult Function(CountIncrement value)? increment,
    TResult Function(CountDecrement value)? decrement,
    TResult Function(Delete value)? delete,
    TResult Function(Clear value)? clear,
    TResult Function(CreateShoppingCart value)? createShoppingCart,
    required TResult orElse(),
  }) {
    if (fetchShoppingCart != null) {
      return fetchShoppingCart(this);
    }
    return orElse();
  }
}

abstract class FetchShoppingCartEvent implements ShoppingCartEvent {
  factory FetchShoppingCartEvent() = _$FetchShoppingCartEvent;
}

/// @nodoc
abstract class $ShoppingCartEmptyCopyWith<$Res> {
  factory $ShoppingCartEmptyCopyWith(
          ShoppingCartEmpty value, $Res Function(ShoppingCartEmpty) then) =
      _$ShoppingCartEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShoppingCartEmptyCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res>
    implements $ShoppingCartEmptyCopyWith<$Res> {
  _$ShoppingCartEmptyCopyWithImpl(
      ShoppingCartEmpty _value, $Res Function(ShoppingCartEmpty) _then)
      : super(_value, (v) => _then(v as ShoppingCartEmpty));

  @override
  ShoppingCartEmpty get _value => super._value as ShoppingCartEmpty;
}

/// @nodoc

class _$ShoppingCartEmpty implements ShoppingCartEmpty {
  _$ShoppingCartEmpty();

  @override
  String toString() {
    return 'ShoppingCartEvent.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShoppingCartEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchShoppingCart,
    required TResult Function() empty,
    required TResult Function(int count, int index) increment,
    required TResult Function(int count, int index) decrement,
    required TResult Function(int index) delete,
    required TResult Function() clear,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createShoppingCart,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchShoppingCart,
    TResult Function()? empty,
    TResult Function(int count, int index)? increment,
    TResult Function(int count, int index)? decrement,
    TResult Function(int index)? delete,
    TResult Function()? clear,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createShoppingCart,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchShoppingCartEvent value) fetchShoppingCart,
    required TResult Function(ShoppingCartEmpty value) empty,
    required TResult Function(CountIncrement value) increment,
    required TResult Function(CountDecrement value) decrement,
    required TResult Function(Delete value) delete,
    required TResult Function(Clear value) clear,
    required TResult Function(CreateShoppingCart value) createShoppingCart,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchShoppingCartEvent value)? fetchShoppingCart,
    TResult Function(ShoppingCartEmpty value)? empty,
    TResult Function(CountIncrement value)? increment,
    TResult Function(CountDecrement value)? decrement,
    TResult Function(Delete value)? delete,
    TResult Function(Clear value)? clear,
    TResult Function(CreateShoppingCart value)? createShoppingCart,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ShoppingCartEmpty implements ShoppingCartEvent {
  factory ShoppingCartEmpty() = _$ShoppingCartEmpty;
}

/// @nodoc
abstract class $CountIncrementCopyWith<$Res> {
  factory $CountIncrementCopyWith(
          CountIncrement value, $Res Function(CountIncrement) then) =
      _$CountIncrementCopyWithImpl<$Res>;
  $Res call({int count, int index});
}

/// @nodoc
class _$CountIncrementCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res>
    implements $CountIncrementCopyWith<$Res> {
  _$CountIncrementCopyWithImpl(
      CountIncrement _value, $Res Function(CountIncrement) _then)
      : super(_value, (v) => _then(v as CountIncrement));

  @override
  CountIncrement get _value => super._value as CountIncrement;

  @override
  $Res call({
    Object? count = freezed,
    Object? index = freezed,
  }) {
    return _then(CountIncrement(
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CountIncrement implements CountIncrement {
  _$CountIncrement(this.count, this.index);

  @override
  final int count;
  @override
  final int index;

  @override
  String toString() {
    return 'ShoppingCartEvent.increment(count: $count, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CountIncrement &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $CountIncrementCopyWith<CountIncrement> get copyWith =>
      _$CountIncrementCopyWithImpl<CountIncrement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchShoppingCart,
    required TResult Function() empty,
    required TResult Function(int count, int index) increment,
    required TResult Function(int count, int index) decrement,
    required TResult Function(int index) delete,
    required TResult Function() clear,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createShoppingCart,
  }) {
    return increment(count, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchShoppingCart,
    TResult Function()? empty,
    TResult Function(int count, int index)? increment,
    TResult Function(int count, int index)? decrement,
    TResult Function(int index)? delete,
    TResult Function()? clear,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createShoppingCart,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(count, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchShoppingCartEvent value) fetchShoppingCart,
    required TResult Function(ShoppingCartEmpty value) empty,
    required TResult Function(CountIncrement value) increment,
    required TResult Function(CountDecrement value) decrement,
    required TResult Function(Delete value) delete,
    required TResult Function(Clear value) clear,
    required TResult Function(CreateShoppingCart value) createShoppingCart,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchShoppingCartEvent value)? fetchShoppingCart,
    TResult Function(ShoppingCartEmpty value)? empty,
    TResult Function(CountIncrement value)? increment,
    TResult Function(CountDecrement value)? decrement,
    TResult Function(Delete value)? delete,
    TResult Function(Clear value)? clear,
    TResult Function(CreateShoppingCart value)? createShoppingCart,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class CountIncrement implements ShoppingCartEvent {
  factory CountIncrement(int count, int index) = _$CountIncrement;

  int get count => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountIncrementCopyWith<CountIncrement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountDecrementCopyWith<$Res> {
  factory $CountDecrementCopyWith(
          CountDecrement value, $Res Function(CountDecrement) then) =
      _$CountDecrementCopyWithImpl<$Res>;
  $Res call({int count, int index});
}

/// @nodoc
class _$CountDecrementCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res>
    implements $CountDecrementCopyWith<$Res> {
  _$CountDecrementCopyWithImpl(
      CountDecrement _value, $Res Function(CountDecrement) _then)
      : super(_value, (v) => _then(v as CountDecrement));

  @override
  CountDecrement get _value => super._value as CountDecrement;

  @override
  $Res call({
    Object? count = freezed,
    Object? index = freezed,
  }) {
    return _then(CountDecrement(
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CountDecrement implements CountDecrement {
  _$CountDecrement(this.count, this.index);

  @override
  final int count;
  @override
  final int index;

  @override
  String toString() {
    return 'ShoppingCartEvent.decrement(count: $count, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CountDecrement &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $CountDecrementCopyWith<CountDecrement> get copyWith =>
      _$CountDecrementCopyWithImpl<CountDecrement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchShoppingCart,
    required TResult Function() empty,
    required TResult Function(int count, int index) increment,
    required TResult Function(int count, int index) decrement,
    required TResult Function(int index) delete,
    required TResult Function() clear,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createShoppingCart,
  }) {
    return decrement(count, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchShoppingCart,
    TResult Function()? empty,
    TResult Function(int count, int index)? increment,
    TResult Function(int count, int index)? decrement,
    TResult Function(int index)? delete,
    TResult Function()? clear,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createShoppingCart,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(count, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchShoppingCartEvent value) fetchShoppingCart,
    required TResult Function(ShoppingCartEmpty value) empty,
    required TResult Function(CountIncrement value) increment,
    required TResult Function(CountDecrement value) decrement,
    required TResult Function(Delete value) delete,
    required TResult Function(Clear value) clear,
    required TResult Function(CreateShoppingCart value) createShoppingCart,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchShoppingCartEvent value)? fetchShoppingCart,
    TResult Function(ShoppingCartEmpty value)? empty,
    TResult Function(CountIncrement value)? increment,
    TResult Function(CountDecrement value)? decrement,
    TResult Function(Delete value)? delete,
    TResult Function(Clear value)? clear,
    TResult Function(CreateShoppingCart value)? createShoppingCart,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class CountDecrement implements ShoppingCartEvent {
  factory CountDecrement(int count, int index) = _$CountDecrement;

  int get count => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountDecrementCopyWith<CountDecrement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCopyWith<$Res> {
  factory $DeleteCopyWith(Delete value, $Res Function(Delete) then) =
      _$DeleteCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$DeleteCopyWithImpl<$Res> extends _$ShoppingCartEventCopyWithImpl<$Res>
    implements $DeleteCopyWith<$Res> {
  _$DeleteCopyWithImpl(Delete _value, $Res Function(Delete) _then)
      : super(_value, (v) => _then(v as Delete));

  @override
  Delete get _value => super._value as Delete;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(Delete(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Delete implements Delete {
  _$Delete(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ShoppingCartEvent.delete(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Delete &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $DeleteCopyWith<Delete> get copyWith =>
      _$DeleteCopyWithImpl<Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchShoppingCart,
    required TResult Function() empty,
    required TResult Function(int count, int index) increment,
    required TResult Function(int count, int index) decrement,
    required TResult Function(int index) delete,
    required TResult Function() clear,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createShoppingCart,
  }) {
    return delete(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchShoppingCart,
    TResult Function()? empty,
    TResult Function(int count, int index)? increment,
    TResult Function(int count, int index)? decrement,
    TResult Function(int index)? delete,
    TResult Function()? clear,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createShoppingCart,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchShoppingCartEvent value) fetchShoppingCart,
    required TResult Function(ShoppingCartEmpty value) empty,
    required TResult Function(CountIncrement value) increment,
    required TResult Function(CountDecrement value) decrement,
    required TResult Function(Delete value) delete,
    required TResult Function(Clear value) clear,
    required TResult Function(CreateShoppingCart value) createShoppingCart,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchShoppingCartEvent value)? fetchShoppingCart,
    TResult Function(ShoppingCartEmpty value)? empty,
    TResult Function(CountIncrement value)? increment,
    TResult Function(CountDecrement value)? decrement,
    TResult Function(Delete value)? delete,
    TResult Function(Clear value)? clear,
    TResult Function(CreateShoppingCart value)? createShoppingCart,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements ShoppingCartEvent {
  factory Delete(int index) = _$Delete;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteCopyWith<Delete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearCopyWith<$Res> {
  factory $ClearCopyWith(Clear value, $Res Function(Clear) then) =
      _$ClearCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearCopyWithImpl<$Res> extends _$ShoppingCartEventCopyWithImpl<$Res>
    implements $ClearCopyWith<$Res> {
  _$ClearCopyWithImpl(Clear _value, $Res Function(Clear) _then)
      : super(_value, (v) => _then(v as Clear));

  @override
  Clear get _value => super._value as Clear;
}

/// @nodoc

class _$Clear implements Clear {
  _$Clear();

  @override
  String toString() {
    return 'ShoppingCartEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchShoppingCart,
    required TResult Function() empty,
    required TResult Function(int count, int index) increment,
    required TResult Function(int count, int index) decrement,
    required TResult Function(int index) delete,
    required TResult Function() clear,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createShoppingCart,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchShoppingCart,
    TResult Function()? empty,
    TResult Function(int count, int index)? increment,
    TResult Function(int count, int index)? decrement,
    TResult Function(int index)? delete,
    TResult Function()? clear,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createShoppingCart,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchShoppingCartEvent value) fetchShoppingCart,
    required TResult Function(ShoppingCartEmpty value) empty,
    required TResult Function(CountIncrement value) increment,
    required TResult Function(CountDecrement value) decrement,
    required TResult Function(Delete value) delete,
    required TResult Function(Clear value) clear,
    required TResult Function(CreateShoppingCart value) createShoppingCart,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchShoppingCartEvent value)? fetchShoppingCart,
    TResult Function(ShoppingCartEmpty value)? empty,
    TResult Function(CountIncrement value)? increment,
    TResult Function(CountDecrement value)? decrement,
    TResult Function(Delete value)? delete,
    TResult Function(Clear value)? clear,
    TResult Function(CreateShoppingCart value)? createShoppingCart,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class Clear implements ShoppingCartEvent {
  factory Clear() = _$Clear;
}

/// @nodoc
abstract class $CreateShoppingCartCopyWith<$Res> {
  factory $CreateShoppingCartCopyWith(
          CreateShoppingCart value, $Res Function(CreateShoppingCart) then) =
      _$CreateShoppingCartCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String author,
      String year,
      String description,
      String cost,
      String image});
}

/// @nodoc
class _$CreateShoppingCartCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res>
    implements $CreateShoppingCartCopyWith<$Res> {
  _$CreateShoppingCartCopyWithImpl(
      CreateShoppingCart _value, $Res Function(CreateShoppingCart) _then)
      : super(_value, (v) => _then(v as CreateShoppingCart));

  @override
  CreateShoppingCart get _value => super._value as CreateShoppingCart;

  @override
  $Res call({
    Object? name = freezed,
    Object? author = freezed,
    Object? year = freezed,
    Object? description = freezed,
    Object? cost = freezed,
    Object? image = freezed,
  }) {
    return _then(CreateShoppingCart(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateShoppingCart implements CreateShoppingCart {
  _$CreateShoppingCart(this.name, this.author, this.year, this.description,
      this.cost, this.image);

  @override
  final String name;
  @override
  final String author;
  @override
  final String year;
  @override
  final String description;
  @override
  final String cost;
  @override
  final String image;

  @override
  String toString() {
    return 'ShoppingCartEvent.createShoppingCart(name: $name, author: $author, year: $year, description: $description, cost: $cost, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateShoppingCart &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  $CreateShoppingCartCopyWith<CreateShoppingCart> get copyWith =>
      _$CreateShoppingCartCopyWithImpl<CreateShoppingCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchShoppingCart,
    required TResult Function() empty,
    required TResult Function(int count, int index) increment,
    required TResult Function(int count, int index) decrement,
    required TResult Function(int index) delete,
    required TResult Function() clear,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createShoppingCart,
  }) {
    return createShoppingCart(name, author, year, description, cost, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchShoppingCart,
    TResult Function()? empty,
    TResult Function(int count, int index)? increment,
    TResult Function(int count, int index)? decrement,
    TResult Function(int index)? delete,
    TResult Function()? clear,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createShoppingCart,
    required TResult orElse(),
  }) {
    if (createShoppingCart != null) {
      return createShoppingCart(name, author, year, description, cost, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchShoppingCartEvent value) fetchShoppingCart,
    required TResult Function(ShoppingCartEmpty value) empty,
    required TResult Function(CountIncrement value) increment,
    required TResult Function(CountDecrement value) decrement,
    required TResult Function(Delete value) delete,
    required TResult Function(Clear value) clear,
    required TResult Function(CreateShoppingCart value) createShoppingCart,
  }) {
    return createShoppingCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchShoppingCartEvent value)? fetchShoppingCart,
    TResult Function(ShoppingCartEmpty value)? empty,
    TResult Function(CountIncrement value)? increment,
    TResult Function(CountDecrement value)? decrement,
    TResult Function(Delete value)? delete,
    TResult Function(Clear value)? clear,
    TResult Function(CreateShoppingCart value)? createShoppingCart,
    required TResult orElse(),
  }) {
    if (createShoppingCart != null) {
      return createShoppingCart(this);
    }
    return orElse();
  }
}

abstract class CreateShoppingCart implements ShoppingCartEvent {
  factory CreateShoppingCart(String name, String author, String year,
      String description, String cost, String image) = _$CreateShoppingCart;

  String get name => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateShoppingCartCopyWith<CreateShoppingCart> get copyWith =>
      throw _privateConstructorUsedError;
}
