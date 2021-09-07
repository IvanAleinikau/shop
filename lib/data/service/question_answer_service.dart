import 'package:get_it/get_it.dart';
import 'package:shop/core/models/question_answer_model.dart';
import 'package:shop/data/repositories/question_answer_repository.dart';

class QuestionAnswerService {
  final repository = GetIt.instance<QuestionAnswerRepository>();

  Future<List<QuestionAnswer>> retrieveQuestionAnswer() async {
    return await repository.retrieveQuestionAnswer();
  }

  Future<int> insertQuestionAnswer(QuestionAnswer qa)async{
    return await repository.insertQuestionAnswer(qa);
  }

  Future<void> deleteQuestionAnswer(int id) async{
    await repository.deleteQuestionAnswer(id);
  }
}
