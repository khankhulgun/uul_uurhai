// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'professions.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Professions$Query$LutDirect$ProfessionEdu
    _$Professions$Query$LutDirect$ProfessionEduFromJson(
        Map<String, dynamic> json) {
  return Professions$Query$LutDirect$ProfessionEdu()
    ..id = json['id'] as int
    ..linkOne = json['link_one'] as String
    ..newsOne = json['news_one'] as String
    ..photo = json['photo'] as String
    ..titleOne = json['title_one'] as String
    ..torolId = json['torol_id'] as int
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String);
}

Map<String, dynamic> _$Professions$Query$LutDirect$ProfessionEduToJson(
        Professions$Query$LutDirect$ProfessionEdu instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link_one': instance.linkOne,
      'news_one': instance.newsOne,
      'photo': instance.photo,
      'title_one': instance.titleOne,
      'torol_id': instance.torolId,
      'created_at': instance.createdAt?.toIso8601String(),
    };

Professions$Query$LutDirect _$Professions$Query$LutDirectFromJson(
    Map<String, dynamic> json) {
  return Professions$Query$LutDirect()
    ..id = json['id'] as int
    ..direct = json['direct'] as String
    ..professionEdu = (json['profession_edu'] as List)
        ?.map((e) => e == null
            ? null
            : Professions$Query$LutDirect$ProfessionEdu.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Professions$Query$LutDirectToJson(
        Professions$Query$LutDirect instance) =>
    <String, dynamic>{
      'id': instance.id,
      'direct': instance.direct,
      'profession_edu':
          instance.professionEdu?.map((e) => e?.toJson())?.toList(),
    };

Professions$Query _$Professions$QueryFromJson(Map<String, dynamic> json) {
  return Professions$Query()
    ..lutDirect = (json['lut_direct'] as List)
        ?.map((e) => e == null
            ? null
            : Professions$Query$LutDirect.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Professions$QueryToJson(Professions$Query instance) =>
    <String, dynamic>{
      'lut_direct': instance.lutDirect?.map((e) => e?.toJson())?.toList(),
    };
