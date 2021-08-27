import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/core/models/question_answer_model.dart';

part 'fqa_state.freezed.dart';

@freezed
abstract class FqaState with _$FqaState {

  factory FqaState.initState() = _InitState;

  factory FqaState.loading() = _FqaLoading;

  factory FqaState.content(List<QuestionAnswer> questionsAndAnswers) = _FqaContent;

  factory FqaState.contentEmpty() = _FqaContentEmpty;

  factory FqaState.error() = _FqaError;

}
