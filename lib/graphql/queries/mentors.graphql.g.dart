// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentors.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mentors$Query$Mentors _$Mentors$Query$MentorsFromJson(
    Map<String, dynamic> json) {
  return Mentors$Query$Mentors()
    ..id = json['id'] as int
    ..adviserWomanOne = json['adviser_woman_one'] as String
    ..adviserWomanTwo = json['adviser_woman_two'] as String
    ..bio = json['bio'] as String
    ..email = json['email'] as String
    ..facebook = json['facebook'] as String
    ..firstname = json['firstname'] as String
    ..instagram = json['instagram'] as String
    ..lastname = json['lastname'] as String
    ..phone = json['phone'] as String
    ..photo = json['photo'] as String
    ..skype = json['skype'] as String
    ..twitter = json['twitter'] as String
    ..website = json['website'] as String;
}

Map<String, dynamic> _$Mentors$Query$MentorsToJson(
        Mentors$Query$Mentors instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adviser_woman_one': instance.adviserWomanOne,
      'adviser_woman_two': instance.adviserWomanTwo,
      'bio': instance.bio,
      'email': instance.email,
      'facebook': instance.facebook,
      'firstname': instance.firstname,
      'instagram': instance.instagram,
      'lastname': instance.lastname,
      'phone': instance.phone,
      'photo': instance.photo,
      'skype': instance.skype,
      'twitter': instance.twitter,
      'website': instance.website,
    };

Mentors$Query _$Mentors$QueryFromJson(Map<String, dynamic> json) {
  return Mentors$Query()
    ..mentors = (json['mentors'] as List)
        ?.map((e) => e == null
            ? null
            : Mentors$Query$Mentors.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Mentors$QueryToJson(Mentors$Query instance) =>
    <String, dynamic>{
      'mentors': instance.mentors?.map((e) => e?.toJson())?.toList(),
    };
