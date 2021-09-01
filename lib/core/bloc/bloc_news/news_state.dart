import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/core/models/news_model.dart';

part 'news_state.freezed.dart';

@freezed
abstract class NewsState with _$NewsState {
  factory NewsState.initState() = _InitState;

  factory NewsState.loading() = _NewsLoading;

  factory NewsState.content(List<News> list) = _NewsContent;

  factory NewsState.contentEmpty() = _NewsContentEmpty;

  factory NewsState.error() = _NewsError;
}
