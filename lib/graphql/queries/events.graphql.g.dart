// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Events$Query$EventStudy _$Events$Query$EventStudyFromJson(
    Map<String, dynamic> json) {
  return Events$Query$EventStudy()
    ..id = json['id'] as int
    ..eventDate = json['event_date'] == null
        ? null
        : DateTime.parse(json['event_date'] as String)
    ..studyName = json['study_name'] as String
    ..posterImage = json['poster_image'] as String
    ..eventLocation = json['event_location'] as String
    ..eventNews = json['event_news'] as String;
}

Map<String, dynamic> _$Events$Query$EventStudyToJson(
        Events$Query$EventStudy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_date': instance.eventDate?.toIso8601String(),
      'study_name': instance.studyName,
      'poster_image': instance.posterImage,
      'event_location': instance.eventLocation,
      'event_news': instance.eventNews,
    };

Events$Query _$Events$QueryFromJson(Map<String, dynamic> json) {
  return Events$Query()
    ..eventStudy = (json['event_study'] as List)
        ?.map((e) => e == null
            ? null
            : Events$Query$EventStudy.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Events$QueryToJson(Events$Query instance) =>
    <String, dynamic>{
      'event_study': instance.eventStudy?.map((e) => e?.toJson())?.toList(),
    };
