import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_event.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_state.dart';
import 'package:shop/core/models/question_answer_model.dart';
import 'package:shop/data/repositories/local_database_repository.dart';

class FqaBloc extends Bloc<FqaEvent, FqaState> {
  LocalDatabaseRepository database = LocalDatabaseRepository();
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
      allQuestionAnswer = await database.retrieveQuestionAnswer();
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
    await database.insertQuestionAnswer(QuestionAnswer(question: event.question, answer: event.answer));
    yield FqaState.loading();
  }

  Stream<FqaState> _deleteQuestionAnswer(DeleteQuestionAnswerEvent event) async* {
    await database.deleteQuestionAnswer(event.index);
    yield FqaState.loading();
  }
}
