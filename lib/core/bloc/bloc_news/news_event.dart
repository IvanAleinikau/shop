import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_event.freezed.dart';

@freezed
abstract class NewsEvent with _$NewsEvent{

  factory NewsEvent.fetchNews() = FetchNewsEvent;

  factory NewsEvent.empty() = NewsEmpty;

  factory NewsEvent.createNews(String title, String text,String url) = CreateNewsEvent;
}
