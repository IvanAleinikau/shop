import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_news_event.freezed.dart';

@freezed
abstract class SavedNewsEvent with _$SavedNewsEvent{
  factory SavedNewsEvent.fetchSavedNews() = FetchSavedNewsEvent;

  factory SavedNewsEvent.createSavedNews(String title, String text,String date) = CreateSavedNewsEvent;

  factory SavedNewsEvent.deleteSavedNews(int index) = DeleteSavedNewsEvent;
}


