// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsTearOff {
  const _$NewsTearOff();

  _News call(
      {required String title,
      required String text,
      required String url,
      required DateTime date}) {
    return _News(
      title: title,
      text: text,
      url: url,
      date: date,
    );
  }
}

/// @nodoc
const $News = _$NewsTearOff();

/// @nodoc
mixin _$News {
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call({String title, String text, String url, DateTime date});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? text = freezed,
    Object? url = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$NewsCopyWith(_News value, $Res Function(_News) then) =
      __$NewsCopyWithImpl<$Res>;
  @override
  $Res call({String title, String text, String url, DateTime date});
}

/// @nodoc
class __$NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$NewsCopyWith<$Res> {
  __$NewsCopyWithImpl(_News _value, $Res Function(_News) _then)
      : super(_value, (v) => _then(v as _News));

  @override
  _News get _value => super._value as _News;

  @override
  $Res call({
    Object? title = freezed,
    Object? text = freezed,
    Object? url = freezed,
    Object? date = freezed,
  }) {
    return _then(_News(
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_News implements _News {
  _$_News(
      {required this.title,
      required this.text,
      required this.url,
      required this.date});

  @override
  final String title;
  @override
  final String text;
  @override
  final String url;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'News(title: $title, text: $text, url: $url, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _News &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$NewsCopyWith<_News> get copyWith =>
      __$NewsCopyWithImpl<_News>(this, _$identity);
}

abstract class _News implements News {
  factory _News(
      {required String title,
      required String text,
      required String url,
      required DateTime date}) = _$_News;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsCopyWith<_News> get copyWith => throw _privateConstructorUsedError;
}
