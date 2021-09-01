import 'dart:async';

import 'package:shop/core/models/question_answer_model.dart';
import 'package:shop/core/models/saved_news_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDatabaseRepository {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'newDatabase.db'),
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE question_answer(id INTEGER PRIMARY KEY AUTOINCREMENT, question TEXT ,answer TEXT)',
        );
        await database.execute(
          'CREATE TABLE news(id INTEGER PRIMARY KEY AUTOINCREMENT,user TEXT,title TEXT,text TEXT,date TEXT)',
        );
      },
      version: 1,
    );
  }

  //qa
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

  //saved news
  Future<int> insertSavedNews(SavedNews savedNews) async {
    int result = 0;
    final Database db = await initializeDB();
    result = await db.insert('news', savedNews.toJson());
    return result;
  }

  Future<List<SavedNews>> retrieveSavedNews() async {
    final Database db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query('news');
    return queryResult.map((e) => SavedNews.fromJson(e)).toList();
  }

  Future<void> deleteSavedNews(int id) async {
    final db = await initializeDB();
    await db.delete(
      'news',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
