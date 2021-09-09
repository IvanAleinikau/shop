import 'dart:async';

import 'package:shop/core/models/saved_news_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SavedNewsRepository {
  late Database database;

  Future<void> initializeDatabase() async {
    database = await openDatabase(
      join(await getDatabasesPath(), 'saved_news.db'),
      onCreate: onCreate,
      version: 1,
    );
  }
  
  void onCreate(Database database, int version) async {
    await database.execute('CREATE TABLE news(id INTEGER PRIMARY KEY AUTOINCREMENT,user TEXT,title TEXT,text TEXT,date TEXT)');
  }

  Future<int> insertSavedNews(SavedNews savedNews) async {
    int result = 0;
    result = await database.insert('news', savedNews.toJson());
    return result;
  }

  Future<List<SavedNews>> retrieveSavedNews() async {
    final List<Map<String, Object?>> queryResult = await database.query('news');
    return queryResult.map((e) => SavedNews.fromJson(e)).toList();
  }

  Future<void> deleteSavedNews(int id) async {
    await database.delete(
      'news',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}