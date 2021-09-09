import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_event.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_state.dart';
import 'package:shop/core/models/question_answer_model.dart';
import 'package:shop/data/service/question_answer_service.dart';

class FqaBloc extends Bloc<FqaEvent, FqaState> {
  final service = GetIt.instance<QuestionAnswerService>();
  late List<QuestionAnswer> allQuestionAnswer;

  FqaBloc() : super(FqaState.initState());

  @override
  Stream<FqaState> mapEventToState(FqaEvent event) async* {
    yield* event.map(
      fetchQuestionAnswer: _fetchQuestionAnswer,
      createQuestionAnswer: _createQuestionAnswer,
      deleteQuestionAnswer: _deleteQuestionAnswer,
    );
  }

  Stream<FqaState> _fetchQuestionAnswer(FqaQuestionAnswerEvent event) async* {
    yield FqaState.loading();
    try {
      allQuestionAnswer = await service.retrieveQuestionAnswer();
      if (allQuestionAnswer.isNotEmpty) {
        yield FqaState.content(allQuestionAnswer);
      } else {
        yield FqaState.contentEmpty();
      }
    } catch (_) {
      yield FqaState.error();
    }
  }

  Stream<FqaState> _createQuestionAnswer(CreateQuestionAnswerEvent event) async* {
    await service.insertQuestionAnswer(QuestionAnswer(question: event.question, answer: event.answer));
    yield FqaState.loading();
  }

  Stream<FqaState> _deleteQuestionAnswer(DeleteQuestionAnswerEvent event) async* {
    await service.deleteQuestionAnswer(event.index);
    yield FqaState.loading();
  }
}
