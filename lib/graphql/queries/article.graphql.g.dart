// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Articles$Query$Article _$Articles$Query$ArticleFromJson(
    Map<String, dynamic> json) {
  return Articles$Query$Article()
    ..id = json['id'] as int
    ..title = json['title'] as String
    ..posterImage = json['poster_image'] as String
    ..source = json['source'] as String
    ..news = json['news'] as String;
}

Map<String, dynamic> _$Articles$Query$ArticleToJson(
        Articles$Query$Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_image': instance.posterImage,
      'source': instance.source,
      'news': instance.news,
    };

Articles$Query _$Articles$QueryFromJson(Map<String, dynamic> json) {
  return Articles$Query()
    ..article = (json['article'] as List)
        ?.map((e) => e == null
            ? null
            : Articles$Query$Article.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Articles$QueryToJson(Articles$Query instance) =>
    <String, dynamic>{
      'article': instance.article?.map((e) => e?.toJson())?.toList(),
    };
