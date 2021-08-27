import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';

@freezed
class News with _$News{
  factory News({
    required String title,
    required String text,
    required String url,
    required DateTime date,
  }) = _News;

}
