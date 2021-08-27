import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/core/models/saved_news_model.dart';

part 'saved_news_state.freezed.dart';

@freezed
abstract class SavedNewsState with _$SavedNewsState{

  factory SavedNewsState.initState() = _InitSavedNewsState;

  factory SavedNewsState.loading() = _SavedNewsLoading;

  factory SavedNewsState.content(List<SavedNews> savedNews) = _SavedNewsContent;

  factory SavedNewsState.contentEmpty() = _SavedNewsContentEmpty;

  factory SavedNewsState.error() = _SavedNewsError;
}

/*
class SavedNewsInitState extends SavedNewsState{}

class EmptySavedNews extends SavedNewsState{}

class SavedNewsLoaded extends SavedNewsState{}

class CircleState extends SavedNewsState{}*/
