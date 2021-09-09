import 'package:get_it/get_it.dart';
import 'package:shop/core/models/news_model.dart';
import 'package:shop/data/repositories/news_repository.dart';

class NewsService{
  final repository = GetIt.instance<NewsRepository>();

  Future<String> makeNews(News news) async{
    return await repository.makeNews(news);
  }

  Future<List<News>> fetchNews() async{
    return repository.fetchNews();
  }
}