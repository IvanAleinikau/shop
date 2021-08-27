import 'package:freezed_annotation/freezed_annotation.dart';

part 'fqa_event.freezed.dart';

@freezed
abstract class FqaEvent with _$FqaEvent{
  factory FqaEvent.fetchQuestionAnswer() = FqaQuestionAnswerEvent;

  factory FqaEvent.createQuestionAnswer(String question, String answer) = CreateQuestionAnswerEvent;

  factory FqaEvent.deleteQuestionAnswer(int index) = DeleteQuestionAnswerEvent;
}

