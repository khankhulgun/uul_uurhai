// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeData$Query$Article _$HomeData$Query$ArticleFromJson(
    Map<String, dynamic> json) {
  return HomeData$Query$Article()
    ..id = json['id'] as int
    ..title = json['title'] as String
    ..posterImage = json['poster_image'] as String
    ..source = json['source'] as String
    ..news = json['news'] as String;
}

Map<String, dynamic> _$HomeData$Query$ArticleToJson(
        HomeData$Query$Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_image': instance.posterImage,
      'source': instance.source,
      'news': instance.news,
    };

HomeData$Query$EventStudy _$HomeData$Query$EventStudyFromJson(
    Map<String, dynamic> json) {
  return HomeData$Query$EventStudy()
    ..id = json['id'] as int
    ..eventDate = json['event_date'] == null
        ? null
        : DateTime.parse(json['event_date'] as String)
    ..studyName = json['study_name'] as String
    ..posterImage = json['poster_image'] as String
    ..eventLocation = json['event_location'] as String
    ..eventNews = json['event_news'] as String;
}

Map<String, dynamic> _$HomeData$Query$EventStudyToJson(
        HomeData$Query$EventStudy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_date': instance.eventDate?.toIso8601String(),
      'study_name': instance.studyName,
      'poster_image': instance.posterImage,
      'event_location': instance.eventLocation,
      'event_news': instance.eventNews,
    };

HomeData$Query _$HomeData$QueryFromJson(Map<String, dynamic> json) {
  return HomeData$Query()
    ..article = (json['article'] as List)
        ?.map((e) => e == null
            ? null
            : HomeData$Query$Article.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..eventStudy = (json['event_study'] as List)
        ?.map((e) => e == null
            ? null
            : HomeData$Query$EventStudy.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$HomeData$QueryToJson(HomeData$Query instance) =>
    <String, dynamic>{
      'article': instance.article?.map((e) => e?.toJson())?.toList(),
      'event_study': instance.eventStudy?.map((e) => e?.toJson())?.toList(),
    };
