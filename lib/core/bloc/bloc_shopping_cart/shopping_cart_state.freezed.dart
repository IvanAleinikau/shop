// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shopping_cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShoppingCartStateTearOff {
  const _$ShoppingCartStateTearOff();

  _InitState initState() {
    return _InitState();
  }

  _ShoppingCartLoading loading() {
    return _ShoppingCartLoading();
  }

  _ShoppingCartContent content(List<Purchase> list) {
    return _ShoppingCartContent(
      list,
    );
  }

  _ShoppingCartEmpty contentEmpty() {
    return _ShoppingCartEmpty();
  }

  _ShoppingCartError error() {
    return _ShoppingCartError();
  }
}

/// @nodoc
const $ShoppingCartState = _$ShoppingCartStateTearOff();

/// @nodoc
mixin _$ShoppingCartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<Purchase> list) content,
    required TResult Function() contentEmpty,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function()? loading,
    TResult Function(List<Purchase> list)? content,
    TResult Function()? contentEmpty,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) initState,
    required TResult Function(_ShoppingCartLoading value) loading,
    required TResult Function(_ShoppingCartContent value) content,
    required TResult Function(_ShoppingCartEmpty value) contentEmpty,
    required TResult Function(_ShoppingCartError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_ShoppingCartLoading value)? loading,
    TResult Function(_ShoppingCartContent value)? content,
    TResult Function(_ShoppingCartEmpty value)? contentEmpty,
    TResult Function(_ShoppingCartError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartStateCopyWith<$Res> {
  factory $ShoppingCartStateCopyWith(
          ShoppingCartState value, $Res Function(ShoppingCartState) then) =
      _$ShoppingCartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShoppingCartStateCopyWithImpl<$Res>
    implements $ShoppingCartStateCopyWith<$Res> {
  _$ShoppingCartStateCopyWithImpl(this._value, this._then);

  final ShoppingCartState _value;
  // ignore: unused_field
  final $Res Function(ShoppingCartState) _then;
}

/// @nodoc
abstract class _$InitStateCopyWith<$Res> {
  factory _$InitStateCopyWith(
          _InitState value, $Res Function(_InitState) then) =
      __$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitStateCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res>
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
    return 'ShoppingCartState.initState()';
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
    required TResult Function(List<Purchase> list) content,
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
    TResult Function(List<Purchase> list)? content,
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
    required TResult Function(_ShoppingCartLoading value) loading,
    required TResult Function(_ShoppingCartContent value) content,
    required TResult Function(_ShoppingCartEmpty value) contentEmpty,
    required TResult Function(_ShoppingCartError value) error,
  }) {
    return initState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_ShoppingCartLoading value)? loading,
    TResult Function(_ShoppingCartContent value)? content,
    TResult Function(_ShoppingCartEmpty value)? contentEmpty,
    TResult Function(_ShoppingCartError value)? error,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState(this);
    }
    return orElse();
  }
}

abstract class _InitState implements ShoppingCartState {
  factory _InitState() = _$_InitState;
}

/// @nodoc
abstract class _$ShoppingCartLoadingCopyWith<$Res> {
  factory _$ShoppingCartLoadingCopyWith(_ShoppingCartLoading value,
          $Res Function(_ShoppingCartLoading) then) =
      __$ShoppingCartLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShoppingCartLoadingCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res>
    implements _$ShoppingCartLoadingCopyWith<$Res> {
  __$ShoppingCartLoadingCopyWithImpl(
      _ShoppingCartLoading _value, $Res Function(_ShoppingCartLoading) _then)
      : super(_value, (v) => _then(v as _ShoppingCartLoading));

  @override
  _ShoppingCartLoading get _value => super._value as _ShoppingCartLoading;
}

/// @nodoc

class _$_ShoppingCartLoading implements _ShoppingCartLoading {
  _$_ShoppingCartLoading();

  @override
  String toString() {
    return 'ShoppingCartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShoppingCartLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<Purchase> list) content,
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
    TResult Function(List<Purchase> list)? content,
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
    required TResult Function(_ShoppingCartLoading value) loading,
    required TResult Function(_ShoppingCartContent value) content,
    required TResult Function(_ShoppingCartEmpty value) contentEmpty,
    required TResult Function(_ShoppingCartError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_ShoppingCartLoading value)? loading,
    TResult Function(_ShoppingCartContent value)? content,
    TResult Function(_ShoppingCartEmpty value)? contentEmpty,
    TResult Function(_ShoppingCartError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ShoppingCartLoading implements ShoppingCartState {
  factory _ShoppingCartLoading() = _$_ShoppingCartLoading;
}

/// @nodoc
abstract class _$ShoppingCartContentCopyWith<$Res> {
  factory _$ShoppingCartContentCopyWith(_ShoppingCartContent value,
          $Res Function(_ShoppingCartContent) then) =
      __$ShoppingCartContentCopyWithImpl<$Res>;
  $Res call({List<Purchase> list});
}

/// @nodoc
class __$ShoppingCartContentCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res>
    implements _$ShoppingCartContentCopyWith<$Res> {
  __$ShoppingCartContentCopyWithImpl(
      _ShoppingCartContent _value, $Res Function(_ShoppingCartContent) _then)
      : super(_value, (v) => _then(v as _ShoppingCartContent));

  @override
  _ShoppingCartContent get _value => super._value as _ShoppingCartContent;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_ShoppingCartContent(
      list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Purchase>,
    ));
  }
}

/// @nodoc

class _$_ShoppingCartContent implements _ShoppingCartContent {
  _$_ShoppingCartContent(this.list);

  @override
  final List<Purchase> list;

  @override
  String toString() {
    return 'ShoppingCartState.content(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShoppingCartContent &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$ShoppingCartContentCopyWith<_ShoppingCartContent> get copyWith =>
      __$ShoppingCartContentCopyWithImpl<_ShoppingCartContent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<Purchase> list) content,
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
    TResult Function(List<Purchase> list)? content,
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
    required TResult Function(_ShoppingCartLoading value) loading,
    required TResult Function(_ShoppingCartContent value) content,
    required TResult Function(_ShoppingCartEmpty value) contentEmpty,
    required TResult Function(_ShoppingCartError value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_ShoppingCartLoading value)? loading,
    TResult Function(_ShoppingCartContent value)? content,
    TResult Function(_ShoppingCartEmpty value)? contentEmpty,
    TResult Function(_ShoppingCartError value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _ShoppingCartContent implements ShoppingCartState {
  factory _ShoppingCartContent(List<Purchase> list) = _$_ShoppingCartContent;

  List<Purchase> get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ShoppingCartContentCopyWith<_ShoppingCartContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShoppingCartEmptyCopyWith<$Res> {
  factory _$ShoppingCartEmptyCopyWith(
          _ShoppingCartEmpty value, $Res Function(_ShoppingCartEmpty) then) =
      __$ShoppingCartEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShoppingCartEmptyCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res>
    implements _$ShoppingCartEmptyCopyWith<$Res> {
  __$ShoppingCartEmptyCopyWithImpl(
      _ShoppingCartEmpty _value, $Res Function(_ShoppingCartEmpty) _then)
      : super(_value, (v) => _then(v as _ShoppingCartEmpty));

  @override
  _ShoppingCartEmpty get _value => super._value as _ShoppingCartEmpty;
}

/// @nodoc

class _$_ShoppingCartEmpty implements _ShoppingCartEmpty {
  _$_ShoppingCartEmpty();

  @override
  String toString() {
    return 'ShoppingCartState.contentEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShoppingCartEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<Purchase> list) content,
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
    TResult Function(List<Purchase> list)? content,
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
    required TResult Function(_ShoppingCartLoading value) loading,
    required TResult Function(_ShoppingCartContent value) content,
    required TResult Function(_ShoppingCartEmpty value) contentEmpty,
    required TResult Function(_ShoppingCartError value) error,
  }) {
    return contentEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_ShoppingCartLoading value)? loading,
    TResult Function(_ShoppingCartContent value)? content,
    TResult Function(_ShoppingCartEmpty value)? contentEmpty,
    TResult Function(_ShoppingCartError value)? error,
    required TResult orElse(),
  }) {
    if (contentEmpty != null) {
      return contentEmpty(this);
    }
    return orElse();
  }
}

abstract class _ShoppingCartEmpty implements ShoppingCartState {
  factory _ShoppingCartEmpty() = _$_ShoppingCartEmpty;
}

/// @nodoc
abstract class _$ShoppingCartErrorCopyWith<$Res> {
  factory _$ShoppingCartErrorCopyWith(
          _ShoppingCartError value, $Res Function(_ShoppingCartError) then) =
      __$ShoppingCartErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShoppingCartErrorCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res>
    implements _$ShoppingCartErrorCopyWith<$Res> {
  __$ShoppingCartErrorCopyWithImpl(
      _ShoppingCartError _value, $Res Function(_ShoppingCartError) _then)
      : super(_value, (v) => _then(v as _ShoppingCartError));

  @override
  _ShoppingCartError get _value => super._value as _ShoppingCartError;
}

/// @nodoc

class _$_ShoppingCartError implements _ShoppingCartError {
  _$_ShoppingCartError();

  @override
  String toString() {
    return 'ShoppingCartState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShoppingCartError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function() loading,
    required TResult Function(List<Purchase> list) content,
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
    TResult Function(List<Purchase> list)? content,
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
    required TResult Function(_ShoppingCartLoading value) loading,
    required TResult Function(_ShoppingCartContent value) content,
    required TResult Function(_ShoppingCartEmpty value) contentEmpty,
    required TResult Function(_ShoppingCartError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? initState,
    TResult Function(_ShoppingCartLoading value)? loading,
    TResult Function(_ShoppingCartContent value)? content,
    TResult Function(_ShoppingCartEmpty value)? contentEmpty,
    TResult Function(_ShoppingCartError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ShoppingCartError implements ShoppingCartState {
  factory _ShoppingCartError() = _$_ShoppingCartError;
}
