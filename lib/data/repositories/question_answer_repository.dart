import 'dart:async';

import 'package:shop/core/models/question_answer_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class QuestionAnswerRepository {
  late Database database;

  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'question_answer.db'),
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE question_answer(id INTEGER PRIMARY KEY AUTOINCREMENT, question TEXT ,answer TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<int> insertQuestionAnswer(QuestionAnswer qa) async {
    int result = 0;
    database = await initializeDB();
    result = await database.insert('question_answer', qa.toJson());
    return result;
  }

  Future<List<QuestionAnswer>> retrieveQuestionAnswer() async {
    database = await initializeDB();
    final List<Map<String, Object?>> queryResult = await database.query('question_answer');
    return queryResult.map((e) => QuestionAnswer.fromJson(e)).toList();
  }

  Future<void> deleteQuestionAnswer(int id) async {
    database = await initializeDB();
    await database.delete(
      'question_answer',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
