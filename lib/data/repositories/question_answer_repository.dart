import 'dart:async';

import 'package:shop/core/models/question_answer_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class QuestionAnswerRepository {
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
    final Database db = await initializeDB();
    result = await db.insert('question_answer', qa.toJson());
    return result;
  }

  Future<List<QuestionAnswer>> retrieveQuestionAnswer() async {
    final Database db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query('question_answer');
    return queryResult.map((e) => QuestionAnswer.fromJson(e)).toList();
  }

  Future<void> deleteQuestionAnswer(int id) async {
    final db = await initializeDB();
    await db.delete(
      'question_answer',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
