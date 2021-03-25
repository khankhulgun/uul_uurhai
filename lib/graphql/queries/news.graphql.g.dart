// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsData$Query$EventStudy _$NewsData$Query$EventStudyFromJson(
    Map<String, dynamic> json) {
  return NewsData$Query$EventStudy()
    ..id = json['id'] as int
    ..eventDate = json['event_date'] == null
        ? null
        : DateTime.parse(json['event_date'] as String)
    ..studyName = json['study_name'] as String
    ..posterImage = json['poster_image'] as String
    ..eventLocation = json['event_location'] as String
    ..eventNews = json['event_news'] as String;
}

Map<String, dynamic> _$NewsData$Query$EventStudyToJson(
        NewsData$Query$EventStudy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_date': instance.eventDate?.toIso8601String(),
      'study_name': instance.studyName,
      'poster_image': instance.posterImage,
      'event_location': instance.eventLocation,
      'event_news': instance.eventNews,
    };

NewsData$Query$Workplace _$NewsData$Query$WorkplaceFromJson(
    Map<String, dynamic> json) {
  return NewsData$Query$Workplace()
    ..email = json['email'] as String
    ..fee = json['fee'] as int
    ..id = json['id'] as int
    ..orgName = json['org_name'] as String
    ..page = json['page'] as String
    ..position = json['position'] as String
    ..posterPhoto = json['poster_photo'] as String
    ..roles = json['roles'] as String
    ..specialSkill = json['special_skill'] as String
    ..web = json['web'] as String;
}

Map<String, dynamic> _$NewsData$Query$WorkplaceToJson(
        NewsData$Query$Workplace instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fee': instance.fee,
      'id': instance.id,
      'org_name': instance.orgName,
      'page': instance.page,
      'position': instance.position,
      'poster_photo': instance.posterPhoto,
      'roles': instance.roles,
      'special_skill': instance.specialSkill,
      'web': instance.web,
    };

NewsData$Query$Article _$NewsData$Query$ArticleFromJson(
    Map<String, dynamic> json) {
  return NewsData$Query$Article()
    ..id = json['id'] as int
    ..title = json['title'] as String
    ..posterImage = json['poster_image'] as String
    ..source = json['source'] as String
    ..news = json['news'] as String;
}

Map<String, dynamic> _$NewsData$Query$ArticleToJson(
        NewsData$Query$Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_image': instance.posterImage,
      'source': instance.source,
      'news': instance.news,
    };

NewsData$Query$StemSuccessStory _$NewsData$Query$StemSuccessStoryFromJson(
    Map<String, dynamic> json) {
  return NewsData$Query$StemSuccessStory()
    ..id = json['id'] as int
    ..posterImage = json['poster_image'] as String
    ..story = json['story'] as String
    ..source = json['source'] as String
    ..storyName = json['story_name'] as String;
}

Map<String, dynamic> _$NewsData$Query$StemSuccessStoryToJson(
        NewsData$Query$StemSuccessStory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_image': instance.posterImage,
      'story': instance.story,
      'source': instance.source,
      'story_name': instance.storyName,
    };

NewsData$Query _$NewsData$QueryFromJson(Map<String, dynamic> json) {
  return NewsData$Query()
    ..eventStudy = (json['event_study'] as List)
        ?.map((e) => e == null
            ? null
            : NewsData$Query$EventStudy.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..workplace = (json['workplace'] as List)
        ?.map((e) => e == null
            ? null
            : NewsData$Query$Workplace.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..article = (json['article'] as List)
        ?.map((e) => e == null
            ? null
            : NewsData$Query$Article.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..stemSuccessStory = (json['stem_success_story'] as List)
        ?.map((e) => e == null
            ? null
            : NewsData$Query$StemSuccessStory.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$NewsData$QueryToJson(NewsData$Query instance) =>
    <String, dynamic>{
      'event_study': instance.eventStudy?.map((e) => e?.toJson())?.toList(),
      'workplace': instance.workplace?.map((e) => e?.toJson())?.toList(),
      'article': instance.article?.map((e) => e?.toJson())?.toList(),
      'stem_success_story':
          instance.stemSuccessStory?.map((e) => e?.toJson())?.toList(),
    };
