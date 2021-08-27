// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'saved_news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedNews _$SavedNewsFromJson(Map<String, dynamic> json) {
  return _SavedNews.fromJson(json);
}

/// @nodoc
class _$SavedNewsTearOff {
  const _$SavedNewsTearOff();

  _SavedNews call(
      {int? id,
      required String user,
      required String title,
      required String text,
      required String date}) {
    return _SavedNews(
      id: id,
      user: user,
      title: title,
      text: text,
      date: date,
    );
  }

  SavedNews fromJson(Map<String, Object> json) {
    return SavedNews.fromJson(json);
  }
}

/// @nodoc
const $SavedNews = _$SavedNewsTearOff();

/// @nodoc
mixin _$SavedNews {
  int? get id => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedNewsCopyWith<SavedNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedNewsCopyWith<$Res> {
  factory $SavedNewsCopyWith(SavedNews value, $Res Function(SavedNews) then) =
      _$SavedNewsCopyWithImpl<$Res>;
  $Res call({int? id, String user, String title, String text, String date});
}

/// @nodoc
class _$SavedNewsCopyWithImpl<$Res> implements $SavedNewsCopyWith<$Res> {
  _$SavedNewsCopyWithImpl(this._value, this._then);

  final SavedNews _value;
  // ignore: unused_field
  final $Res Function(SavedNews) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SavedNewsCopyWith<$Res> implements $SavedNewsCopyWith<$Res> {
  factory _$SavedNewsCopyWith(
          _SavedNews value, $Res Function(_SavedNews) then) =
      __$SavedNewsCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String user, String title, String text, String date});
}

/// @nodoc
class __$SavedNewsCopyWithImpl<$Res> extends _$SavedNewsCopyWithImpl<$Res>
    implements _$SavedNewsCopyWith<$Res> {
  __$SavedNewsCopyWithImpl(_SavedNews _value, $Res Function(_SavedNews) _then)
      : super(_value, (v) => _then(v as _SavedNews));

  @override
  _SavedNews get _value => super._value as _SavedNews;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? date = freezed,
  }) {
    return _then(_SavedNews(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedNews implements _SavedNews {
  _$_SavedNews(
      {this.id,
      required this.user,
      required this.title,
      required this.text,
      required this.date});

  factory _$_SavedNews.fromJson(Map<String, dynamic> json) =>
      _$_$_SavedNewsFromJson(json);

  @override
  final int? id;
  @override
  final String user;
  @override
  final String title;
  @override
  final String text;
  @override
  final String date;

  @override
  String toString() {
    return 'SavedNews(id: $id, user: $user, title: $title, text: $text, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SavedNews &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$SavedNewsCopyWith<_SavedNews> get copyWith =>
      __$SavedNewsCopyWithImpl<_SavedNews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SavedNewsToJson(this);
  }
}

abstract class _SavedNews implements SavedNews {
  factory _SavedNews(
      {int? id,
      required String user,
      required String title,
      required String text,
      required String date}) = _$_SavedNews;

  factory _SavedNews.fromJson(Map<String, dynamic> json) =
      _$_SavedNews.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get user => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SavedNewsCopyWith<_SavedNews> get copyWith =>
      throw _privateConstructorUsedError;
}
