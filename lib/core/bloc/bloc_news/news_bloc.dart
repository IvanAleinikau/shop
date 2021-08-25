import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_news/news_event.dart';
import 'package:shop/core/bloc/bloc_news/news_state.dart';
import 'package:shop/core/models/news_model.dart';
import 'package:shop/data/repositories/news_repository.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsRepository repository = NewsRepository();
  NewsBloc() : super(NewsInitState());

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    if (event is LoadNews) {
      yield NewsLoaded();
    } else if (event is CreateNews) {
      repository.makeNews(News(title: event.title, text: event.text, url: event.url, date: DateTime.now()));
      yield NewsLoaded();
    } else {
      yield EmptyNews();
    }
  }
}
