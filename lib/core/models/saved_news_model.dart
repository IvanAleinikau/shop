import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_news_model.freezed.dart';
part 'saved_news_model.g.dart';

@freezed
class SavedNews with _$SavedNews{

  factory SavedNews({
    int? id,
    required String user,
    required String title,
    required String text,
    required String date,
  }) = _SavedNews;

  factory SavedNews.fromJson(Map<String, dynamic> json) => _$SavedNewsFromJson(json);

}
