import 'dart:async';

import 'package:shop/core/models/saved_news_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SavedNewsRepository {
  late Database database;

  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'saved_news.db'),
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE news(id INTEGER PRIMARY KEY AUTOINCREMENT,user TEXT,title TEXT,text TEXT,date TEXT)',
        );
      },
      version: 1,
    );
  }
  
  Future<int> insertSavedNews(SavedNews savedNews) async {
    int result = 0;
    database = await initializeDB();
    result = await database.insert('news', savedNews.toJson());
    return result;
  }

  Future<List<SavedNews>> retrieveSavedNews() async {
    database = await initializeDB();
    final List<Map<String, Object?>> queryResult = await database.query('news');
    return queryResult.map((e) => SavedNews.fromJson(e)).toList();
  }

  Future<void> deleteSavedNews(int id) async {
    database = await initializeDB();
    await database.delete(
      'news',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
