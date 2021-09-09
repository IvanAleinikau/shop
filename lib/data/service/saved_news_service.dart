import 'package:get_it/get_it.dart';
import 'package:shop/core/models/saved_news_model.dart';
import 'package:shop/data/repositories/saved_news_repository.dart';

class SavedNewsService{
  final repository = GetIt.instance<SavedNewsRepository>();

  Future<int> insertSavedNews(SavedNews savedNews) async{
    return await repository.insertSavedNews(savedNews);
  }

  Future<List<SavedNews>> retrieveSavedNews() async{
    return await repository.retrieveSavedNews();
  }

  Future<void> deleteSavedNews(int id) async{
    await repository.deleteSavedNews(id);
  }
}