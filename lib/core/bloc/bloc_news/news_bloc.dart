import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_news/news_event.dart';
import 'package:shop/core/bloc/bloc_news/news_state.dart';
import 'package:shop/core/models/news_model.dart';
import 'package:shop/data/repositories/news_repository.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsRepository repository = NewsRepository();
  late List<News> list;

  NewsBloc() : super(NewsState.initState());

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    yield* event.map(
      fetchNews: _fetchNews,
      empty: _empty,
      createNews: _createNews,
    );
  }

  Stream<NewsState> _fetchNews(FetchNewsEvent event) async* {
    try {
      list = await repository.fetchNews();
      yield NewsState.content(list);
    } catch (_) {
      yield NewsState.error();
    }
  }

  Stream<NewsState> _empty(NewsEmpty event) async* {
    yield NewsState.contentEmpty();
  }

  Stream<NewsState> _createNews(CreateNewsEvent event) async* {
    repository.makeNews(News(
        title: event.title,
        text: event.title,
        url: event.url,
        date: DateTime.now()));
  }
}
