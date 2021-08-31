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
  late List<SavedNews> currentUserSavedNews;

  SavedNewsBloc() : super(SavedNewsState.initState());

  @override
  Stream<SavedNewsState> mapEventToState(SavedNewsEvent event) async* {
    yield* event.map(
      fetchSavedNews: _fetchSavedNews,
      createSavedNews: _createSavedNews,
      deleteSavedNews: _deleteSavedNews,
    );
  }

  Stream<SavedNewsState> _fetchSavedNews(FetchSavedNewsEvent event) async* {
    yield SavedNewsState.loading();
    try {
      allSavedNews = [];
      currentUserSavedNews = [];
      allSavedNews = await database.retrieveSavedNews();
      if (allSavedNews.isNotEmpty) {
        for (int i = 0; i < allSavedNews.length; i++) {
          if (allSavedNews[i].user == user.toString()) {
            currentUserSavedNews.add(allSavedNews[i]);
          }
        }
        yield SavedNewsState.content(currentUserSavedNews);
      } else {
        yield SavedNewsState.contentEmpty();
      }
    } catch (_) {
      yield SavedNewsState.error();
    }
  }

  Stream<SavedNewsState> _createSavedNews(CreateSavedNewsEvent event) async* {
    await database.insertSavedNews(
      SavedNews(
        user: user.toString(),
        title: event.title,
        text: event.text,
        date: event.date,
      ),
    );
    yield SavedNewsState.loading();
  }

  Stream<SavedNewsState> _deleteSavedNews(DeleteSavedNewsEvent event) async* {
    await database.deleteSavedNews(event.index);
    yield SavedNewsState.loading();
  }
}
