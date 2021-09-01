// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedNews _$_$_SavedNewsFromJson(Map<String, dynamic> json) {
  return _$_SavedNews(
    id: json['id'] as int?,
    user: json['user'] as String,
    title: json['title'] as String,
    text: json['text'] as String,
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$_$_SavedNewsToJson(_$_SavedNews instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'title': instance.title,
      'text': instance.text,
      'date': instance.date,
    };
