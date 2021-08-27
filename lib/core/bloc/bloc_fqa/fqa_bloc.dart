import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_event.dart';
import 'package:shop/core/bloc/bloc_fqa/fqa_state.dart';
import 'package:shop/core/models/question_answer_model.dart';
import 'package:shop/data/repositories/local_database_repository.dart';

class FqaBloc extends Bloc<FqaEvent, FqaState> {
  LocalDatabaseRepository database = LocalDatabaseRepository();
  late List<QuestionAnswer> allQuestionAnswer;

  FqaBloc() : super(FqaInitState());

  @override
  Stream<FqaState> mapEventToState(FqaEvent event) async* {
    if (event is LoadFqa) {
      allQuestionAnswer = await database.retrieveQuestionAnswer();
      if (allQuestionAnswer.isNotEmpty) {
        yield FqaLoaded();
      } else {
        yield EmptyFqa();
      }
    } else if (event is CircleEvent) {
      yield CircleState();
    } else if (event is DeleteFqa) {
      await database.deleteQuestionAnswer(event.index!.toInt());
      allQuestionAnswer = [];
      allQuestionAnswer = await database.retrieveQuestionAnswer();
      yield FqaLoaded();
    }
    if(event is CreateFqa){
      if(event.question.isNotEmpty && event.answer.isNotEmpty){
        QuestionAnswer questionAnswer = QuestionAnswer(question: event.question, answer: event.answer);
        database.insertQuestionAnswer(questionAnswer);
        yield FqaCreated();
      }
    }
  }
}
