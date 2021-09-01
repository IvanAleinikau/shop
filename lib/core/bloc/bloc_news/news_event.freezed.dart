// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsEventTearOff {
  const _$NewsEventTearOff();

  FetchNewsEvent fetchNews() {
    return FetchNewsEvent();
  }

  NewsEmpty empty() {
    return NewsEmpty();
  }

  CreateNewsEvent createNews(
      {required String title, required String text, required String url}) {
    return CreateNewsEvent(
      title: title,
      text: text,
      url: url,
    );
  }
}

/// @nodoc
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function() empty,
    required TResult Function(String title, String text, String url) createNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function()? empty,
    TResult Function(String title, String text, String url)? createNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNewsEvent value) fetchNews,
    required TResult Function(NewsEmpty value) empty,
    required TResult Function(CreateNewsEvent value) createNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNewsEvent value)? fetchNews,
    TResult Function(NewsEmpty value)? empty,
    TResult Function(CreateNewsEvent value)? createNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;
}

/// @nodoc
abstract class $FetchNewsEventCopyWith<$Res> {
  factory $FetchNewsEventCopyWith(
          FetchNewsEvent value, $Res Function(FetchNewsEvent) then) =
      _$FetchNewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchNewsEventCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $FetchNewsEventCopyWith<$Res> {
  _$FetchNewsEventCopyWithImpl(
      FetchNewsEvent _value, $Res Function(FetchNewsEvent) _then)
      : super(_value, (v) => _then(v as FetchNewsEvent));

  @override
  FetchNewsEvent get _value => super._value as FetchNewsEvent;
}

/// @nodoc

class _$FetchNewsEvent implements FetchNewsEvent {
  _$FetchNewsEvent();

  @override
  String toString() {
    return 'NewsEvent.fetchNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchNewsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function() empty,
    required TResult Function(String title, String text, String url) createNews,
  }) {
    return fetchNews();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function()? empty,
    TResult Function(String title, String text, String url)? createNews,
    required TResult orElse(),
  }) {
    if (fetchNews != null) {
      return fetchNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNewsEvent value) fetchNews,
    required TResult Function(NewsEmpty value) empty,
    required TResult Function(CreateNewsEvent value) createNews,
  }) {
    return fetchNews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNewsEvent value)? fetchNews,
    TResult Function(NewsEmpty value)? empty,
    TResult Function(CreateNewsEvent value)? createNews,
    required TResult orElse(),
  }) {
    if (fetchNews != null) {
      return fetchNews(this);
    }
    return orElse();
  }
}

abstract class FetchNewsEvent implements NewsEvent {
  factory FetchNewsEvent() = _$FetchNewsEvent;
}

/// @nodoc
abstract class $NewsEmptyCopyWith<$Res> {
  factory $NewsEmptyCopyWith(NewsEmpty value, $Res Function(NewsEmpty) then) =
      _$NewsEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEmptyCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $NewsEmptyCopyWith<$Res> {
  _$NewsEmptyCopyWithImpl(NewsEmpty _value, $Res Function(NewsEmpty) _then)
      : super(_value, (v) => _then(v as NewsEmpty));

  @override
  NewsEmpty get _value => super._value as NewsEmpty;
}

/// @nodoc

class _$NewsEmpty implements NewsEmpty {
  _$NewsEmpty();

  @override
  String toString() {
    return 'NewsEvent.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NewsEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function() empty,
    required TResult Function(String title, String text, String url) createNews,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function()? empty,
    TResult Function(String title, String text, String url)? createNews,
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
    required TResult Function(FetchNewsEvent value) fetchNews,
    required TResult Function(NewsEmpty value) empty,
    required TResult Function(CreateNewsEvent value) createNews,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNewsEvent value)? fetchNews,
    TResult Function(NewsEmpty value)? empty,
    TResult Function(CreateNewsEvent value)? createNews,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class NewsEmpty implements NewsEvent {
  factory NewsEmpty() = _$NewsEmpty;
}

/// @nodoc
abstract class $CreateNewsEventCopyWith<$Res> {
  factory $CreateNewsEventCopyWith(
          CreateNewsEvent value, $Res Function(CreateNewsEvent) then) =
      _$CreateNewsEventCopyWithImpl<$Res>;
  $Res call({String title, String text, String url});
}

/// @nodoc
class _$CreateNewsEventCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $CreateNewsEventCopyWith<$Res> {
  _$CreateNewsEventCopyWithImpl(
      CreateNewsEvent _value, $Res Function(CreateNewsEvent) _then)
      : super(_value, (v) => _then(v as CreateNewsEvent));

  @override
  CreateNewsEvent get _value => super._value as CreateNewsEvent;

  @override
  $Res call({
    Object? title = freezed,
    Object? text = freezed,
    Object? url = freezed,
  }) {
    return _then(CreateNewsEvent(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateNewsEvent implements CreateNewsEvent {
  _$CreateNewsEvent(
      {required this.title, required this.text, required this.url});

  @override
  final String title;
  @override
  final String text;
  @override
  final String url;

  @override
  String toString() {
    return 'NewsEvent.createNews(title: $title, text: $text, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateNewsEvent &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $CreateNewsEventCopyWith<CreateNewsEvent> get copyWith =>
      _$CreateNewsEventCopyWithImpl<CreateNewsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function() empty,
    required TResult Function(String title, String text, String url) createNews,
  }) {
    return createNews(title, text, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function()? empty,
    TResult Function(String title, String text, String url)? createNews,
    required TResult orElse(),
  }) {
    if (createNews != null) {
      return createNews(title, text, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchNewsEvent value) fetchNews,
    required TResult Function(NewsEmpty value) empty,
    required TResult Function(CreateNewsEvent value) createNews,
  }) {
    return createNews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchNewsEvent value)? fetchNews,
    TResult Function(NewsEmpty value)? empty,
    TResult Function(CreateNewsEvent value)? createNews,
    required TResult orElse(),
  }) {
    if (createNews != null) {
      return createNews(this);
    }
    return orElse();
  }
}

abstract class CreateNewsEvent implements NewsEvent {
  factory CreateNewsEvent(
      {required String title,
      required String text,
      required String url}) = _$CreateNewsEvent;

  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateNewsEventCopyWith<CreateNewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
