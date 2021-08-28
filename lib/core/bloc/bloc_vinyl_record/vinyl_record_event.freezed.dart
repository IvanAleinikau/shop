// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'vinyl_record_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VinylRecordEventTearOff {
  const _$VinylRecordEventTearOff();

  FetchVinylRecord fetchNews() {
    return FetchVinylRecord();
  }

  VinylRecordEmpty empty() {
    return VinylRecordEmpty();
  }

  CreateVinylRecord createVinylRecord(String name, String author, String year,
      String description, String cost, String image) {
    return CreateVinylRecord(
      name,
      author,
      year,
      description,
      cost,
      image,
    );
  }

  NameToList nameToList(String name) {
    return NameToList(
      name,
    );
  }
}

/// @nodoc
const $VinylRecordEvent = _$VinylRecordEventTearOff();

/// @nodoc
mixin _$VinylRecordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function() empty,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createVinylRecord,
    required TResult Function(String name) nameToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function()? empty,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createVinylRecord,
    TResult Function(String name)? nameToList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchVinylRecord value) fetchNews,
    required TResult Function(VinylRecordEmpty value) empty,
    required TResult Function(CreateVinylRecord value) createVinylRecord,
    required TResult Function(NameToList value) nameToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchVinylRecord value)? fetchNews,
    TResult Function(VinylRecordEmpty value)? empty,
    TResult Function(CreateVinylRecord value)? createVinylRecord,
    TResult Function(NameToList value)? nameToList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VinylRecordEventCopyWith<$Res> {
  factory $VinylRecordEventCopyWith(
          VinylRecordEvent value, $Res Function(VinylRecordEvent) then) =
      _$VinylRecordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VinylRecordEventCopyWithImpl<$Res>
    implements $VinylRecordEventCopyWith<$Res> {
  _$VinylRecordEventCopyWithImpl(this._value, this._then);

  final VinylRecordEvent _value;
  // ignore: unused_field
  final $Res Function(VinylRecordEvent) _then;
}

/// @nodoc
abstract class $FetchVinylRecordCopyWith<$Res> {
  factory $FetchVinylRecordCopyWith(
          FetchVinylRecord value, $Res Function(FetchVinylRecord) then) =
      _$FetchVinylRecordCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchVinylRecordCopyWithImpl<$Res>
    extends _$VinylRecordEventCopyWithImpl<$Res>
    implements $FetchVinylRecordCopyWith<$Res> {
  _$FetchVinylRecordCopyWithImpl(
      FetchVinylRecord _value, $Res Function(FetchVinylRecord) _then)
      : super(_value, (v) => _then(v as FetchVinylRecord));

  @override
  FetchVinylRecord get _value => super._value as FetchVinylRecord;
}

/// @nodoc

class _$FetchVinylRecord implements FetchVinylRecord {
  _$FetchVinylRecord();

  @override
  String toString() {
    return 'VinylRecordEvent.fetchNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchVinylRecord);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function() empty,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createVinylRecord,
    required TResult Function(String name) nameToList,
  }) {
    return fetchNews();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function()? empty,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createVinylRecord,
    TResult Function(String name)? nameToList,
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
    required TResult Function(FetchVinylRecord value) fetchNews,
    required TResult Function(VinylRecordEmpty value) empty,
    required TResult Function(CreateVinylRecord value) createVinylRecord,
    required TResult Function(NameToList value) nameToList,
  }) {
    return fetchNews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchVinylRecord value)? fetchNews,
    TResult Function(VinylRecordEmpty value)? empty,
    TResult Function(CreateVinylRecord value)? createVinylRecord,
    TResult Function(NameToList value)? nameToList,
    required TResult orElse(),
  }) {
    if (fetchNews != null) {
      return fetchNews(this);
    }
    return orElse();
  }
}

abstract class FetchVinylRecord implements VinylRecordEvent {
  factory FetchVinylRecord() = _$FetchVinylRecord;
}

/// @nodoc
abstract class $VinylRecordEmptyCopyWith<$Res> {
  factory $VinylRecordEmptyCopyWith(
          VinylRecordEmpty value, $Res Function(VinylRecordEmpty) then) =
      _$VinylRecordEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$VinylRecordEmptyCopyWithImpl<$Res>
    extends _$VinylRecordEventCopyWithImpl<$Res>
    implements $VinylRecordEmptyCopyWith<$Res> {
  _$VinylRecordEmptyCopyWithImpl(
      VinylRecordEmpty _value, $Res Function(VinylRecordEmpty) _then)
      : super(_value, (v) => _then(v as VinylRecordEmpty));

  @override
  VinylRecordEmpty get _value => super._value as VinylRecordEmpty;
}

/// @nodoc

class _$VinylRecordEmpty implements VinylRecordEmpty {
  _$VinylRecordEmpty();

  @override
  String toString() {
    return 'VinylRecordEvent.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VinylRecordEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function() empty,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createVinylRecord,
    required TResult Function(String name) nameToList,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function()? empty,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createVinylRecord,
    TResult Function(String name)? nameToList,
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
    required TResult Function(FetchVinylRecord value) fetchNews,
    required TResult Function(VinylRecordEmpty value) empty,
    required TResult Function(CreateVinylRecord value) createVinylRecord,
    required TResult Function(NameToList value) nameToList,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchVinylRecord value)? fetchNews,
    TResult Function(VinylRecordEmpty value)? empty,
    TResult Function(CreateVinylRecord value)? createVinylRecord,
    TResult Function(NameToList value)? nameToList,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class VinylRecordEmpty implements VinylRecordEvent {
  factory VinylRecordEmpty() = _$VinylRecordEmpty;
}

/// @nodoc
abstract class $CreateVinylRecordCopyWith<$Res> {
  factory $CreateVinylRecordCopyWith(
          CreateVinylRecord value, $Res Function(CreateVinylRecord) then) =
      _$CreateVinylRecordCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String author,
      String year,
      String description,
      String cost,
      String image});
}

/// @nodoc
class _$CreateVinylRecordCopyWithImpl<$Res>
    extends _$VinylRecordEventCopyWithImpl<$Res>
    implements $CreateVinylRecordCopyWith<$Res> {
  _$CreateVinylRecordCopyWithImpl(
      CreateVinylRecord _value, $Res Function(CreateVinylRecord) _then)
      : super(_value, (v) => _then(v as CreateVinylRecord));

  @override
  CreateVinylRecord get _value => super._value as CreateVinylRecord;

  @override
  $Res call({
    Object? name = freezed,
    Object? author = freezed,
    Object? year = freezed,
    Object? description = freezed,
    Object? cost = freezed,
    Object? image = freezed,
  }) {
    return _then(CreateVinylRecord(
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

class _$CreateVinylRecord implements CreateVinylRecord {
  _$CreateVinylRecord(this.name, this.author, this.year, this.description,
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
    return 'VinylRecordEvent.createVinylRecord(name: $name, author: $author, year: $year, description: $description, cost: $cost, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateVinylRecord &&
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
  $CreateVinylRecordCopyWith<CreateVinylRecord> get copyWith =>
      _$CreateVinylRecordCopyWithImpl<CreateVinylRecord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function() empty,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createVinylRecord,
    required TResult Function(String name) nameToList,
  }) {
    return createVinylRecord(name, author, year, description, cost, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function()? empty,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createVinylRecord,
    TResult Function(String name)? nameToList,
    required TResult orElse(),
  }) {
    if (createVinylRecord != null) {
      return createVinylRecord(name, author, year, description, cost, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchVinylRecord value) fetchNews,
    required TResult Function(VinylRecordEmpty value) empty,
    required TResult Function(CreateVinylRecord value) createVinylRecord,
    required TResult Function(NameToList value) nameToList,
  }) {
    return createVinylRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchVinylRecord value)? fetchNews,
    TResult Function(VinylRecordEmpty value)? empty,
    TResult Function(CreateVinylRecord value)? createVinylRecord,
    TResult Function(NameToList value)? nameToList,
    required TResult orElse(),
  }) {
    if (createVinylRecord != null) {
      return createVinylRecord(this);
    }
    return orElse();
  }
}

abstract class CreateVinylRecord implements VinylRecordEvent {
  factory CreateVinylRecord(String name, String author, String year,
      String description, String cost, String image) = _$CreateVinylRecord;

  String get name => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateVinylRecordCopyWith<CreateVinylRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameToListCopyWith<$Res> {
  factory $NameToListCopyWith(
          NameToList value, $Res Function(NameToList) then) =
      _$NameToListCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameToListCopyWithImpl<$Res>
    extends _$VinylRecordEventCopyWithImpl<$Res>
    implements $NameToListCopyWith<$Res> {
  _$NameToListCopyWithImpl(NameToList _value, $Res Function(NameToList) _then)
      : super(_value, (v) => _then(v as NameToList));

  @override
  NameToList get _value => super._value as NameToList;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(NameToList(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameToList implements NameToList {
  _$NameToList(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'VinylRecordEvent.nameToList(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameToList &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $NameToListCopyWith<NameToList> get copyWith =>
      _$NameToListCopyWithImpl<NameToList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNews,
    required TResult Function() empty,
    required TResult Function(String name, String author, String year,
            String description, String cost, String image)
        createVinylRecord,
    required TResult Function(String name) nameToList,
  }) {
    return nameToList(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNews,
    TResult Function()? empty,
    TResult Function(String name, String author, String year,
            String description, String cost, String image)?
        createVinylRecord,
    TResult Function(String name)? nameToList,
    required TResult orElse(),
  }) {
    if (nameToList != null) {
      return nameToList(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchVinylRecord value) fetchNews,
    required TResult Function(VinylRecordEmpty value) empty,
    required TResult Function(CreateVinylRecord value) createVinylRecord,
    required TResult Function(NameToList value) nameToList,
  }) {
    return nameToList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchVinylRecord value)? fetchNews,
    TResult Function(VinylRecordEmpty value)? empty,
    TResult Function(CreateVinylRecord value)? createVinylRecord,
    TResult Function(NameToList value)? nameToList,
    required TResult orElse(),
  }) {
    if (nameToList != null) {
      return nameToList(this);
    }
    return orElse();
  }
}

abstract class NameToList implements VinylRecordEvent {
  factory NameToList(String name) = _$NameToList;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameToListCopyWith<NameToList> get copyWith =>
      throw _privateConstructorUsedError;
}
