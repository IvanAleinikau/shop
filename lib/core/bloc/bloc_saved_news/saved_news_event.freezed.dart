// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'saved_news_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SavedNewsEventTearOff {
  const _$SavedNewsEventTearOff();

  FetchSavedNewsEvent fetchSavedNews() {
    return FetchSavedNewsEvent();
  }

  CreateSavedNewsEvent createSavedNews(String title, String text, String date) {
    return CreateSavedNewsEvent(
      title,
      text,
      date,
    );
  }

  DeleteSavedNewsEvent deleteSavedNews(int index) {
    return DeleteSavedNewsEvent(
      index,
    );
  }
}

/// @nodoc
const $SavedNewsEvent = _$SavedNewsEventTearOff();

/// @nodoc
mixin _$SavedNewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSavedNews,
    required TResult Function(String title, String text, String date)
        createSavedNews,
    required TResult Function(int index) deleteSavedNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSavedNews,
    TResult Function(String title, String text, String date)? createSavedNews,
    TResult Function(int index)? deleteSavedNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSavedNewsEvent value) fetchSavedNews,
    required TResult Function(CreateSavedNewsEvent value) createSavedNews,
    required TResult Function(DeleteSavedNewsEvent value) deleteSavedNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSavedNewsEvent value)? fetchSavedNews,
    TResult Function(CreateSavedNewsEvent value)? createSavedNews,
    TResult Function(DeleteSavedNewsEvent value)? deleteSavedNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedNewsEventCopyWith<$Res> {
  factory $SavedNewsEventCopyWith(
          SavedNewsEvent value, $Res Function(SavedNewsEvent) then) =
      _$SavedNewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedNewsEventCopyWithImpl<$Res>
    implements $SavedNewsEventCopyWith<$Res> {
  _$SavedNewsEventCopyWithImpl(this._value, this._then);

  final SavedNewsEvent _value;
  // ignore: unused_field
  final $Res Function(SavedNewsEvent) _then;
}

/// @nodoc
abstract class $FetchSavedNewsEventCopyWith<$Res> {
  factory $FetchSavedNewsEventCopyWith(
          FetchSavedNewsEvent value, $Res Function(FetchSavedNewsEvent) then) =
      _$FetchSavedNewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchSavedNewsEventCopyWithImpl<$Res>
    extends _$SavedNewsEventCopyWithImpl<$Res>
    implements $FetchSavedNewsEventCopyWith<$Res> {
  _$FetchSavedNewsEventCopyWithImpl(
      FetchSavedNewsEvent _value, $Res Function(FetchSavedNewsEvent) _then)
      : super(_value, (v) => _then(v as FetchSavedNewsEvent));

  @override
  FetchSavedNewsEvent get _value => super._value as FetchSavedNewsEvent;
}

/// @nodoc

class _$FetchSavedNewsEvent implements FetchSavedNewsEvent {
  _$FetchSavedNewsEvent();

  @override
  String toString() {
    return 'SavedNewsEvent.fetchSavedNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchSavedNewsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSavedNews,
    required TResult Function(String title, String text, String date)
        createSavedNews,
    required TResult Function(int index) deleteSavedNews,
  }) {
    return fetchSavedNews();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSavedNews,
    TResult Function(String title, String text, String date)? createSavedNews,
    TResult Function(int index)? deleteSavedNews,
    required TResult orElse(),
  }) {
    if (fetchSavedNews != null) {
      return fetchSavedNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSavedNewsEvent value) fetchSavedNews,
    required TResult Function(CreateSavedNewsEvent value) createSavedNews,
    required TResult Function(DeleteSavedNewsEvent value) deleteSavedNews,
  }) {
    return fetchSavedNews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSavedNewsEvent value)? fetchSavedNews,
    TResult Function(CreateSavedNewsEvent value)? createSavedNews,
    TResult Function(DeleteSavedNewsEvent value)? deleteSavedNews,
    required TResult orElse(),
  }) {
    if (fetchSavedNews != null) {
      return fetchSavedNews(this);
    }
    return orElse();
  }
}

abstract class FetchSavedNewsEvent implements SavedNewsEvent {
  factory FetchSavedNewsEvent() = _$FetchSavedNewsEvent;
}

/// @nodoc
abstract class $CreateSavedNewsEventCopyWith<$Res> {
  factory $CreateSavedNewsEventCopyWith(CreateSavedNewsEvent value,
          $Res Function(CreateSavedNewsEvent) then) =
      _$CreateSavedNewsEventCopyWithImpl<$Res>;
  $Res call({String title, String text, String date});
}

/// @nodoc
class _$CreateSavedNewsEventCopyWithImpl<$Res>
    extends _$SavedNewsEventCopyWithImpl<$Res>
    implements $CreateSavedNewsEventCopyWith<$Res> {
  _$CreateSavedNewsEventCopyWithImpl(
      CreateSavedNewsEvent _value, $Res Function(CreateSavedNewsEvent) _then)
      : super(_value, (v) => _then(v as CreateSavedNewsEvent));

  @override
  CreateSavedNewsEvent get _value => super._value as CreateSavedNewsEvent;

  @override
  $Res call({
    Object? title = freezed,
    Object? text = freezed,
    Object? date = freezed,
  }) {
    return _then(CreateSavedNewsEvent(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateSavedNewsEvent implements CreateSavedNewsEvent {
  _$CreateSavedNewsEvent(this.title, this.text, this.date);

  @override
  final String title;
  @override
  final String text;
  @override
  final String date;

  @override
  String toString() {
    return 'SavedNewsEvent.createSavedNews(title: $title, text: $text, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateSavedNewsEvent &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $CreateSavedNewsEventCopyWith<CreateSavedNewsEvent> get copyWith =>
      _$CreateSavedNewsEventCopyWithImpl<CreateSavedNewsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSavedNews,
    required TResult Function(String title, String text, String date)
        createSavedNews,
    required TResult Function(int index) deleteSavedNews,
  }) {
    return createSavedNews(title, text, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSavedNews,
    TResult Function(String title, String text, String date)? createSavedNews,
    TResult Function(int index)? deleteSavedNews,
    required TResult orElse(),
  }) {
    if (createSavedNews != null) {
      return createSavedNews(title, text, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSavedNewsEvent value) fetchSavedNews,
    required TResult Function(CreateSavedNewsEvent value) createSavedNews,
    required TResult Function(DeleteSavedNewsEvent value) deleteSavedNews,
  }) {
    return createSavedNews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSavedNewsEvent value)? fetchSavedNews,
    TResult Function(CreateSavedNewsEvent value)? createSavedNews,
    TResult Function(DeleteSavedNewsEvent value)? deleteSavedNews,
    required TResult orElse(),
  }) {
    if (createSavedNews != null) {
      return createSavedNews(this);
    }
    return orElse();
  }
}

abstract class CreateSavedNewsEvent implements SavedNewsEvent {
  factory CreateSavedNewsEvent(String title, String text, String date) =
      _$CreateSavedNewsEvent;

  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSavedNewsEventCopyWith<CreateSavedNewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteSavedNewsEventCopyWith<$Res> {
  factory $DeleteSavedNewsEventCopyWith(DeleteSavedNewsEvent value,
          $Res Function(DeleteSavedNewsEvent) then) =
      _$DeleteSavedNewsEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$DeleteSavedNewsEventCopyWithImpl<$Res>
    extends _$SavedNewsEventCopyWithImpl<$Res>
    implements $DeleteSavedNewsEventCopyWith<$Res> {
  _$DeleteSavedNewsEventCopyWithImpl(
      DeleteSavedNewsEvent _value, $Res Function(DeleteSavedNewsEvent) _then)
      : super(_value, (v) => _then(v as DeleteSavedNewsEvent));

  @override
  DeleteSavedNewsEvent get _value => super._value as DeleteSavedNewsEvent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(DeleteSavedNewsEvent(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteSavedNewsEvent implements DeleteSavedNewsEvent {
  _$DeleteSavedNewsEvent(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SavedNewsEvent.deleteSavedNews(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteSavedNewsEvent &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $DeleteSavedNewsEventCopyWith<DeleteSavedNewsEvent> get copyWith =>
      _$DeleteSavedNewsEventCopyWithImpl<DeleteSavedNewsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSavedNews,
    required TResult Function(String title, String text, String date)
        createSavedNews,
    required TResult Function(int index) deleteSavedNews,
  }) {
    return deleteSavedNews(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSavedNews,
    TResult Function(String title, String text, String date)? createSavedNews,
    TResult Function(int index)? deleteSavedNews,
    required TResult orElse(),
  }) {
    if (deleteSavedNews != null) {
      return deleteSavedNews(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchSavedNewsEvent value) fetchSavedNews,
    required TResult Function(CreateSavedNewsEvent value) createSavedNews,
    required TResult Function(DeleteSavedNewsEvent value) deleteSavedNews,
  }) {
    return deleteSavedNews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchSavedNewsEvent value)? fetchSavedNews,
    TResult Function(CreateSavedNewsEvent value)? createSavedNews,
    TResult Function(DeleteSavedNewsEvent value)? deleteSavedNews,
    required TResult orElse(),
  }) {
    if (deleteSavedNews != null) {
      return deleteSavedNews(this);
    }
    return orElse();
  }
}

abstract class DeleteSavedNewsEvent implements SavedNewsEvent {
  factory DeleteSavedNewsEvent(int index) = _$DeleteSavedNewsEvent;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteSavedNewsEventCopyWith<DeleteSavedNewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
