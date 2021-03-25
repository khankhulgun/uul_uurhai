// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuccessStory$Query$StemSuccessStory
    _$SuccessStory$Query$StemSuccessStoryFromJson(Map<String, dynamic> json) {
  return SuccessStory$Query$StemSuccessStory()
    ..id = json['id'] as int
    ..posterImage = json['poster_image'] as String
    ..story = json['story'] as String
    ..source = json['source'] as String
    ..storyName = json['story_name'] as String;
}

Map<String, dynamic> _$SuccessStory$Query$StemSuccessStoryToJson(
        SuccessStory$Query$StemSuccessStory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_image': instance.posterImage,
      'story': instance.story,
      'source': instance.source,
      'story_name': instance.storyName,
    };

SuccessStory$Query _$SuccessStory$QueryFromJson(Map<String, dynamic> json) {
  return SuccessStory$Query()
    ..stemSuccessStory = (json['stem_success_story'] as List)
        ?.map((e) => e == null
            ? null
            : SuccessStory$Query$StemSuccessStory.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SuccessStory$QueryToJson(SuccessStory$Query instance) =>
    <String, dynamic>{
      'stem_success_story':
          instance.stemSuccessStory?.map((e) => e?.toJson())?.toList(),
    };
