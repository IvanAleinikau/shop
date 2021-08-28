import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_state.freezed.dart';

@freezed
abstract class NewsState with _$NewsState{

  factory NewsState.initState() = _InitState;

  factory NewsState.loading() = _NewsLoading;

  factory NewsState.content(Stream<QuerySnapshot<Map<String, dynamic>>> name) = _NewsContent;

  factory NewsState.contentEmpty() = _NewsContentEmpty;

  factory NewsState.error() = _NewsError;
}