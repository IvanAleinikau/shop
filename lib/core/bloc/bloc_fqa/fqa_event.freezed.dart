// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'fqa_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FqaEventTearOff {
  const _$FqaEventTearOff();

  FqaQuestionAnswerEvent fetchQuestionAnswer() {
    return FqaQuestionAnswerEvent();
  }

  CreateQuestionAnswerEvent createQuestionAnswer(
      String question, String answer) {
    return CreateQuestionAnswerEvent(
      question,
      answer,
    );
  }

  DeleteQuestionAnswerEvent deleteQuestionAnswer(int index) {
    return DeleteQuestionAnswerEvent(
      index,
    );
  }
}

/// @nodoc
const $FqaEvent = _$FqaEventTearOff();

/// @nodoc
mixin _$FqaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuestionAnswer,
    required TResult Function(String question, String answer)
        createQuestionAnswer,
    required TResult Function(int index) deleteQuestionAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuestionAnswer,
    TResult Function(String question, String answer)? createQuestionAnswer,
    TResult Function(int index)? deleteQuestionAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FqaQuestionAnswerEvent value) fetchQuestionAnswer,
    required TResult Function(CreateQuestionAnswerEvent value)
        createQuestionAnswer,
    required TResult Function(DeleteQuestionAnswerEvent value)
        deleteQuestionAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FqaQuestionAnswerEvent value)? fetchQuestionAnswer,
    TResult Function(CreateQuestionAnswerEvent value)? createQuestionAnswer,
    TResult Function(DeleteQuestionAnswerEvent value)? deleteQuestionAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FqaEventCopyWith<$Res> {
  factory $FqaEventCopyWith(FqaEvent value, $Res Function(FqaEvent) then) =
      _$FqaEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FqaEventCopyWithImpl<$Res> implements $FqaEventCopyWith<$Res> {
  _$FqaEventCopyWithImpl(this._value, this._then);

  final FqaEvent _value;
  // ignore: unused_field
  final $Res Function(FqaEvent) _then;
}

/// @nodoc
abstract class $FqaQuestionAnswerEventCopyWith<$Res> {
  factory $FqaQuestionAnswerEventCopyWith(FqaQuestionAnswerEvent value,
          $Res Function(FqaQuestionAnswerEvent) then) =
      _$FqaQuestionAnswerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FqaQuestionAnswerEventCopyWithImpl<$Res>
    extends _$FqaEventCopyWithImpl<$Res>
    implements $FqaQuestionAnswerEventCopyWith<$Res> {
  _$FqaQuestionAnswerEventCopyWithImpl(FqaQuestionAnswerEvent _value,
      $Res Function(FqaQuestionAnswerEvent) _then)
      : super(_value, (v) => _then(v as FqaQuestionAnswerEvent));

  @override
  FqaQuestionAnswerEvent get _value => super._value as FqaQuestionAnswerEvent;
}

/// @nodoc

class _$FqaQuestionAnswerEvent implements FqaQuestionAnswerEvent {
  _$FqaQuestionAnswerEvent();

  @override
  String toString() {
    return 'FqaEvent.fetchQuestionAnswer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FqaQuestionAnswerEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuestionAnswer,
    required TResult Function(String question, String answer)
        createQuestionAnswer,
    required TResult Function(int index) deleteQuestionAnswer,
  }) {
    return fetchQuestionAnswer();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuestionAnswer,
    TResult Function(String question, String answer)? createQuestionAnswer,
    TResult Function(int index)? deleteQuestionAnswer,
    required TResult orElse(),
  }) {
    if (fetchQuestionAnswer != null) {
      return fetchQuestionAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FqaQuestionAnswerEvent value) fetchQuestionAnswer,
    required TResult Function(CreateQuestionAnswerEvent value)
        createQuestionAnswer,
    required TResult Function(DeleteQuestionAnswerEvent value)
        deleteQuestionAnswer,
  }) {
    return fetchQuestionAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FqaQuestionAnswerEvent value)? fetchQuestionAnswer,
    TResult Function(CreateQuestionAnswerEvent value)? createQuestionAnswer,
    TResult Function(DeleteQuestionAnswerEvent value)? deleteQuestionAnswer,
    required TResult orElse(),
  }) {
    if (fetchQuestionAnswer != null) {
      return fetchQuestionAnswer(this);
    }
    return orElse();
  }
}

abstract class FqaQuestionAnswerEvent implements FqaEvent {
  factory FqaQuestionAnswerEvent() = _$FqaQuestionAnswerEvent;
}

/// @nodoc
abstract class $CreateQuestionAnswerEventCopyWith<$Res> {
  factory $CreateQuestionAnswerEventCopyWith(CreateQuestionAnswerEvent value,
          $Res Function(CreateQuestionAnswerEvent) then) =
      _$CreateQuestionAnswerEventCopyWithImpl<$Res>;
  $Res call({String question, String answer});
}

/// @nodoc
class _$CreateQuestionAnswerEventCopyWithImpl<$Res>
    extends _$FqaEventCopyWithImpl<$Res>
    implements $CreateQuestionAnswerEventCopyWith<$Res> {
  _$CreateQuestionAnswerEventCopyWithImpl(CreateQuestionAnswerEvent _value,
      $Res Function(CreateQuestionAnswerEvent) _then)
      : super(_value, (v) => _then(v as CreateQuestionAnswerEvent));

  @override
  CreateQuestionAnswerEvent get _value =>
      super._value as CreateQuestionAnswerEvent;

  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(CreateQuestionAnswerEvent(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateQuestionAnswerEvent implements CreateQuestionAnswerEvent {
  _$CreateQuestionAnswerEvent(this.question, this.answer);

  @override
  final String question;
  @override
  final String answer;

  @override
  String toString() {
    return 'FqaEvent.createQuestionAnswer(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateQuestionAnswerEvent &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(answer);

  @JsonKey(ignore: true)
  @override
  $CreateQuestionAnswerEventCopyWith<CreateQuestionAnswerEvent> get copyWith =>
      _$CreateQuestionAnswerEventCopyWithImpl<CreateQuestionAnswerEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuestionAnswer,
    required TResult Function(String question, String answer)
        createQuestionAnswer,
    required TResult Function(int index) deleteQuestionAnswer,
  }) {
    return createQuestionAnswer(question, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuestionAnswer,
    TResult Function(String question, String answer)? createQuestionAnswer,
    TResult Function(int index)? deleteQuestionAnswer,
    required TResult orElse(),
  }) {
    if (createQuestionAnswer != null) {
      return createQuestionAnswer(question, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FqaQuestionAnswerEvent value) fetchQuestionAnswer,
    required TResult Function(CreateQuestionAnswerEvent value)
        createQuestionAnswer,
    required TResult Function(DeleteQuestionAnswerEvent value)
        deleteQuestionAnswer,
  }) {
    return createQuestionAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FqaQuestionAnswerEvent value)? fetchQuestionAnswer,
    TResult Function(CreateQuestionAnswerEvent value)? createQuestionAnswer,
    TResult Function(DeleteQuestionAnswerEvent value)? deleteQuestionAnswer,
    required TResult orElse(),
  }) {
    if (createQuestionAnswer != null) {
      return createQuestionAnswer(this);
    }
    return orElse();
  }
}

abstract class CreateQuestionAnswerEvent implements FqaEvent {
  factory CreateQuestionAnswerEvent(String question, String answer) =
      _$CreateQuestionAnswerEvent;

  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateQuestionAnswerEventCopyWith<CreateQuestionAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteQuestionAnswerEventCopyWith<$Res> {
  factory $DeleteQuestionAnswerEventCopyWith(DeleteQuestionAnswerEvent value,
          $Res Function(DeleteQuestionAnswerEvent) then) =
      _$DeleteQuestionAnswerEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$DeleteQuestionAnswerEventCopyWithImpl<$Res>
    extends _$FqaEventCopyWithImpl<$Res>
    implements $DeleteQuestionAnswerEventCopyWith<$Res> {
  _$DeleteQuestionAnswerEventCopyWithImpl(DeleteQuestionAnswerEvent _value,
      $Res Function(DeleteQuestionAnswerEvent) _then)
      : super(_value, (v) => _then(v as DeleteQuestionAnswerEvent));

  @override
  DeleteQuestionAnswerEvent get _value =>
      super._value as DeleteQuestionAnswerEvent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(DeleteQuestionAnswerEvent(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteQuestionAnswerEvent implements DeleteQuestionAnswerEvent {
  _$DeleteQuestionAnswerEvent(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'FqaEvent.deleteQuestionAnswer(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteQuestionAnswerEvent &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $DeleteQuestionAnswerEventCopyWith<DeleteQuestionAnswerEvent> get copyWith =>
      _$DeleteQuestionAnswerEventCopyWithImpl<DeleteQuestionAnswerEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuestionAnswer,
    required TResult Function(String question, String answer)
        createQuestionAnswer,
    required TResult Function(int index) deleteQuestionAnswer,
  }) {
    return deleteQuestionAnswer(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuestionAnswer,
    TResult Function(String question, String answer)? createQuestionAnswer,
    TResult Function(int index)? deleteQuestionAnswer,
    required TResult orElse(),
  }) {
    if (deleteQuestionAnswer != null) {
      return deleteQuestionAnswer(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FqaQuestionAnswerEvent value) fetchQuestionAnswer,
    required TResult Function(CreateQuestionAnswerEvent value)
        createQuestionAnswer,
    required TResult Function(DeleteQuestionAnswerEvent value)
        deleteQuestionAnswer,
  }) {
    return deleteQuestionAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FqaQuestionAnswerEvent value)? fetchQuestionAnswer,
    TResult Function(CreateQuestionAnswerEvent value)? createQuestionAnswer,
    TResult Function(DeleteQuestionAnswerEvent value)? deleteQuestionAnswer,
    required TResult orElse(),
  }) {
    if (deleteQuestionAnswer != null) {
      return deleteQuestionAnswer(this);
    }
    return orElse();
  }
}

abstract class DeleteQuestionAnswerEvent implements FqaEvent {
  factory DeleteQuestionAnswerEvent(int index) = _$DeleteQuestionAnswerEvent;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteQuestionAnswerEventCopyWith<DeleteQuestionAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
