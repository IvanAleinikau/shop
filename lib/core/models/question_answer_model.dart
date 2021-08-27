import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_answer_model.freezed.dart';
part 'question_answer_model.g.dart';

@freezed
class QuestionAnswer with _$QuestionAnswer {
  factory QuestionAnswer({
    int? id,
    required String question,
    required String answer,
  }) = _QuestionAnswer;

  factory QuestionAnswer.fromJson(Map<String, dynamic> json) => _$QuestionAnswerFromJson(json);

}
