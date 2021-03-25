// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medee.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Medee$Query$DsMedee _$Medee$Query$DsMedeeFromJson(Map<String, dynamic> json) {
  return Medee$Query$DsMedee()
    ..id = json['id'] as int
    ..angilal = json['angilal'] as String
    ..medee = json['medee'] as String
    ..medeeCatId = json['medee_cat_id'] as int
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..tailbar = json['tailbar'] as String;
}

Map<String, dynamic> _$Medee$Query$DsMedeeToJson(
        Medee$Query$DsMedee instance) =>
    <String, dynamic>{
      'id': instance.id,
      'angilal': instance.angilal,
      'medee': instance.medee,
      'medee_cat_id': instance.medeeCatId,
      'ognoo': instance.ognoo?.toIso8601String(),
      'tailbar': instance.tailbar,
    };

Medee$Query _$Medee$QueryFromJson(Map<String, dynamic> json) {
  return Medee$Query()
    ..dsMedee = (json['ds_medee'] as List)
        ?.map((e) => e == null
            ? null
            : Medee$Query$DsMedee.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Medee$QueryToJson(Medee$Query instance) =>
    <String, dynamic>{
      'ds_medee': instance.dsMedee?.map((e) => e?.toJson())?.toList(),
    };
