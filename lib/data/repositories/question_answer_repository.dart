import 'dart:async';

import 'package:shop/core/models/question_answer_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class QuestionAnswerRepository {
  late Database database;

  Future<void> initializeDatabase() async {
    database = await openDatabase(
      join(await getDatabasesPath(), 'question_answer.db'),
      onCreate: onCreate,
      version: 1,
    );
  }

  void onCreate(Database database, int version) async {
    await database.execute('CREATE TABLE question_answer(id INTEGER PRIMARY KEY AUTOINCREMENT, question TEXT ,answer TEXT)');
  }

  Future<int> insertQuestionAnswer(QuestionAnswer qa) async {
    int result = 0;
    result = await database.insert('question_answer', qa.toJson());
    return result;
  }

  Future<List<QuestionAnswer>> retrieveQuestionAnswer() async {
    final List<Map<String, Object?>> queryResult = await database.query('question_answer');
    return queryResult.map((e) => QuestionAnswer.fromJson(e)).toList();
  }

  Future<void> deleteQuestionAnswer(int id) async {
    await database.delete(
      'question_answer',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
