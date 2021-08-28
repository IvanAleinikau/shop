import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_news/news_event.dart';
import 'package:shop/core/bloc/bloc_news/news_state.dart';
import 'package:shop/core/models/news_model.dart';
import 'package:shop/data/repositories/news_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsRepository repository = NewsRepository();
  NewsBloc() : super(NewsState.initState());

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    if(event is FetchNewsEvent){
      try{
        yield NewsState.content(FirebaseFirestore.instance.collection('news').snapshots());
      }catch(_){
        yield NewsState.error();
      }
    }
    if(event is CreateNewsEvent){
      repository.makeNews(News(title: event.title, text: event.title, url: event.url, date: DateTime.now()));
    }
    if(event is NewsEmpty){
      yield NewsState.contentEmpty();
    }
  }
}
