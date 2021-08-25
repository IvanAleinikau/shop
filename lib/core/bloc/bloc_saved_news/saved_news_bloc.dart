import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_event.dart';
import 'package:shop/core/bloc/bloc_saved_news/saved_news_state.dart';
import 'package:shop/core/models/saved_news_model.dart';
import 'package:shop/data/repositories/local_database_repository.dart';

class SavedNewsBloc extends Bloc<SavedNewsEvent, SavedNewsState> {
  String? user = FirebaseAuth.instance.currentUser!.email;
  LocalDatabaseRepository database = LocalDatabaseRepository();
  late List<SavedNews> allSavedNews;
  final List<SavedNews> currentUserSavedNews = [];

  SavedNewsBloc() : super(SavedNewsInitState());

  @override
  Stream<SavedNewsState> mapEventToState(SavedNewsEvent event) async* {
    if (event is LoadSavedNews) {
      allSavedNews = await database.retrieveSavedNews();
      if (allSavedNews.isNotEmpty) {
        yield SavedNewsLoaded();
      } else {
        yield EmptySavedNews();
      }
    } else if (event is CircleEvent) {
      yield CircleState();
    } else if (event is DeleteSavedNews) {
      await database.deleteSavedNews(event.index!.toInt());
      allSavedNews = [];
      allSavedNews = await database.retrieveSavedNews();
      yield SavedNewsLoaded();
    } else if(event is CreateSavedNews){
      database.insertSavedNews(SavedNews(user: user.toString(), title: event.title, text: event.text, date: event.date));
      yield SavedNewsLoaded();
    }
  }
}
