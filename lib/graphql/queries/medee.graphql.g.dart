// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medee.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Medee$Query$Paginate$DsMedee _$Medee$Query$Paginate$DsMedeeFromJson(
    Map<String, dynamic> json) {
  return Medee$Query$Paginate$DsMedee()
    ..angilal = json['angilal'] as String
    ..id = json['id'] as int
    ..medee = json['medee'] as String
    ..medeeCatId = json['medee_cat_id'] as int
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..tailbar = json['tailbar'] as String;
}

Map<String, dynamic> _$Medee$Query$Paginate$DsMedeeToJson(
        Medee$Query$Paginate$DsMedee instance) =>
    <String, dynamic>{
      'angilal': instance.angilal,
      'id': instance.id,
      'medee': instance.medee,
      'medee_cat_id': instance.medeeCatId,
      'ognoo': instance.ognoo?.toIso8601String(),
      'tailbar': instance.tailbar,
    };

Medee$Query$Paginate _$Medee$Query$PaginateFromJson(Map<String, dynamic> json) {
  return Medee$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsMedee = (json['ds_medee'] as List)
        ?.map((e) => e == null
            ? null
            : Medee$Query$Paginate$DsMedee.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Medee$Query$PaginateToJson(
        Medee$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_medee': instance.dsMedee?.map((e) => e?.toJson())?.toList(),
    };

Medee$Query _$Medee$QueryFromJson(Map<String, dynamic> json) {
  return Medee$Query()
    ..paginate = json['paginate'] == null
        ? null
        : Medee$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Medee$QueryToJson(Medee$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

MedeeArguments _$MedeeArgumentsFromJson(Map<String, dynamic> json) {
  return MedeeArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$MedeeArgumentsToJson(MedeeArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
