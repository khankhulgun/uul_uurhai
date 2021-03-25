// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Jobs$Query$Workplace _$Jobs$Query$WorkplaceFromJson(Map<String, dynamic> json) {
  return Jobs$Query$Workplace()
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

Map<String, dynamic> _$Jobs$Query$WorkplaceToJson(
        Jobs$Query$Workplace instance) =>
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

Jobs$Query _$Jobs$QueryFromJson(Map<String, dynamic> json) {
  return Jobs$Query()
    ..workplace = (json['workplace'] as List)
        ?.map((e) => e == null
            ? null
            : Jobs$Query$Workplace.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Jobs$QueryToJson(Jobs$Query instance) =>
    <String, dynamic>{
      'workplace': instance.workplace?.map((e) => e?.toJson())?.toList(),
    };
