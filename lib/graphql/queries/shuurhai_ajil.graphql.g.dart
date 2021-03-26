// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shuurhai_ajil.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil
    _$ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjilFromJson(
        Map<String, dynamic> json) {
  return ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil()
    ..ajil = json['ajil'] as String
    ..albanTushaal = json['alban_tushaal'] as String
    ..angilal = json['angilal'] as String
    ..bGId = json['b_g_id'] as int
    ..id = json['id'] as int
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..salbar = json['salbar'] as String
    ..shiidverlehHugatsaa = json['shiidverleh_hugatsaa'] == null
        ? null
        : DateTime.parse(json['shiidverleh_hugatsaa'] as String)
    ..shuurhaiCatId = json['shuurhai_cat_id'] as int
    ..status = json['status'] as String
    ..tolovId = json['tolov_id'] as int;
}

Map<String, dynamic> _$ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjilToJson(
        ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil instance) =>
    <String, dynamic>{
      'ajil': instance.ajil,
      'alban_tushaal': instance.albanTushaal,
      'angilal': instance.angilal,
      'b_g_id': instance.bGId,
      'id': instance.id,
      'ognoo': instance.ognoo?.toIso8601String(),
      'salbar': instance.salbar,
      'shiidverleh_hugatsaa': instance.shiidverlehHugatsaa?.toIso8601String(),
      'shuurhai_cat_id': instance.shuurhaiCatId,
      'status': instance.status,
      'tolov_id': instance.tolovId,
    };

ShuurkhaiAjil$Query$Paginate _$ShuurkhaiAjil$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return ShuurkhaiAjil$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsShuurkhaiAjil = (json['ds_shuurkhai_ajil'] as List)
        ?.map((e) => e == null
            ? null
            : ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ShuurkhaiAjil$Query$PaginateToJson(
        ShuurkhaiAjil$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_shuurkhai_ajil':
          instance.dsShuurkhaiAjil?.map((e) => e?.toJson())?.toList(),
    };

ShuurkhaiAjil$Query _$ShuurkhaiAjil$QueryFromJson(Map<String, dynamic> json) {
  return ShuurkhaiAjil$Query()
    ..paginate = json['paginate'] == null
        ? null
        : ShuurkhaiAjil$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ShuurkhaiAjil$QueryToJson(
        ShuurkhaiAjil$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

ShuurkhaiAjilArguments _$ShuurkhaiAjilArgumentsFromJson(
    Map<String, dynamic> json) {
  return ShuurkhaiAjilArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$ShuurkhaiAjilArgumentsToJson(
        ShuurkhaiAjilArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
