// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tours.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tours$Query$StemLabTour _$Tours$Query$StemLabTourFromJson(
    Map<String, dynamic> json) {
  return Tours$Query$StemLabTour()
    ..id = json['id'] as int
    ..link = json['link'] as String
    ..news = json['news'] as String
    ..posterImage = json['poster_image'] as String
    ..title = json['title'] as String
    ..wideImage = json['wide_image'] as String;
}

Map<String, dynamic> _$Tours$Query$StemLabTourToJson(
        Tours$Query$StemLabTour instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'news': instance.news,
      'poster_image': instance.posterImage,
      'title': instance.title,
      'wide_image': instance.wideImage,
    };

Tours$Query _$Tours$QueryFromJson(Map<String, dynamic> json) {
  return Tours$Query()
    ..stemLabTour = (json['stem_lab_tour'] as List)
        ?.map((e) => e == null
            ? null
            : Tours$Query$StemLabTour.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Tours$QueryToJson(Tours$Query instance) =>
    <String, dynamic>{
      'stem_lab_tour': instance.stemLabTour?.map((e) => e?.toJson())?.toList(),
    };
