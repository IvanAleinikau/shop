import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_event.freezed.dart';

@freezed
abstract class NewsEvent with _$NewsEvent {
  factory NewsEvent.fetchNews() = FetchNewsEvent;

  factory NewsEvent.empty() = NewsEmpty;

  factory NewsEvent.createNews({
    required String title,
    required String text,
    required String url,
  }) = CreateNewsEvent;
}
