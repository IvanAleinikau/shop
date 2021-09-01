// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'question_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionAnswer _$QuestionAnswerFromJson(Map<String, dynamic> json) {
  return _QuestionAnswer.fromJson(json);
}

/// @nodoc
class _$QuestionAnswerTearOff {
  const _$QuestionAnswerTearOff();

  _QuestionAnswer call(
      {int? id, required String question, required String answer}) {
    return _QuestionAnswer(
      id: id,
      question: question,
      answer: answer,
    );
  }

  QuestionAnswer fromJson(Map<String, Object> json) {
    return QuestionAnswer.fromJson(json);
  }
}

/// @nodoc
const $QuestionAnswer = _$QuestionAnswerTearOff();

/// @nodoc
mixin _$QuestionAnswer {
  int? get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionAnswerCopyWith<QuestionAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerCopyWith<$Res> {
  factory $QuestionAnswerCopyWith(
          QuestionAnswer value, $Res Function(QuestionAnswer) then) =
      _$QuestionAnswerCopyWithImpl<$Res>;
  $Res call({int? id, String question, String answer});
}

/// @nodoc
class _$QuestionAnswerCopyWithImpl<$Res>
    implements $QuestionAnswerCopyWith<$Res> {
  _$QuestionAnswerCopyWithImpl(this._value, this._then);

  final QuestionAnswer _value;
  // ignore: unused_field
  final $Res Function(QuestionAnswer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$QuestionAnswerCopyWith<$Res>
    implements $QuestionAnswerCopyWith<$Res> {
  factory _$QuestionAnswerCopyWith(
          _QuestionAnswer value, $Res Function(_QuestionAnswer) then) =
      __$QuestionAnswerCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String question, String answer});
}

/// @nodoc
class __$QuestionAnswerCopyWithImpl<$Res>
    extends _$QuestionAnswerCopyWithImpl<$Res>
    implements _$QuestionAnswerCopyWith<$Res> {
  __$QuestionAnswerCopyWithImpl(
      _QuestionAnswer _value, $Res Function(_QuestionAnswer) _then)
      : super(_value, (v) => _then(v as _QuestionAnswer));

  @override
  _QuestionAnswer get _value => super._value as _QuestionAnswer;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_QuestionAnswer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionAnswer implements _QuestionAnswer {
  _$_QuestionAnswer({this.id, required this.question, required this.answer});

  factory _$_QuestionAnswer.fromJson(Map<String, dynamic> json) =>
      _$_$_QuestionAnswerFromJson(json);

  @override
  final int? id;
  @override
  final String question;
  @override
  final String answer;

  @override
  String toString() {
    return 'QuestionAnswer(id: $id, question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionAnswer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(answer);

  @JsonKey(ignore: true)
  @override
  _$QuestionAnswerCopyWith<_QuestionAnswer> get copyWith =>
      __$QuestionAnswerCopyWithImpl<_QuestionAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuestionAnswerToJson(this);
  }
}

abstract class _QuestionAnswer implements QuestionAnswer {
  factory _QuestionAnswer(
      {int? id,
      required String question,
      required String answer}) = _$_QuestionAnswer;

  factory _QuestionAnswer.fromJson(Map<String, dynamic> json) =
      _$_QuestionAnswer.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get question => throw _privateConstructorUsedError;
  @override
  String get answer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionAnswerCopyWith<_QuestionAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}
