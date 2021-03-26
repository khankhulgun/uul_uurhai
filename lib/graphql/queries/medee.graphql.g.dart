// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medee.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginateMedee$Query$Paginate$DsMedee
    _$PaginateMedee$Query$Paginate$DsMedeeFromJson(Map<String, dynamic> json) {
  return PaginateMedee$Query$Paginate$DsMedee()
    ..id = json['id'] as int
    ..medee = json['medee'] as String
    ..angilal = json['angilal'] as String
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..tailbar = json['tailbar'] as String;
}

Map<String, dynamic> _$PaginateMedee$Query$Paginate$DsMedeeToJson(
        PaginateMedee$Query$Paginate$DsMedee instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medee': instance.medee,
      'angilal': instance.angilal,
      'ognoo': instance.ognoo?.toIso8601String(),
      'tailbar': instance.tailbar,
    };

PaginateMedee$Query$Paginate _$PaginateMedee$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return PaginateMedee$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsMedee = (json['ds_medee'] as List)
        ?.map((e) => e == null
            ? null
            : PaginateMedee$Query$Paginate$DsMedee.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginateMedee$Query$PaginateToJson(
        PaginateMedee$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_medee': instance.dsMedee?.map((e) => e?.toJson())?.toList(),
    };

PaginateMedee$Query _$PaginateMedee$QueryFromJson(Map<String, dynamic> json) {
  return PaginateMedee$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginateMedee$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginateMedee$QueryToJson(
        PaginateMedee$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginateMedeeArguments _$PaginateMedeeArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginateMedeeArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginateMedeeArgumentsToJson(
        PaginateMedeeArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
