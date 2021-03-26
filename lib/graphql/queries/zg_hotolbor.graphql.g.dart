// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zg_hotolbor.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor$SubHotolborUzuulelt
    _$Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor$SubHotolborUzuuleltFromJson(
        Map<String, dynamic> json) {
  return Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor$SubHotolborUzuulelt()
    ..hTuvshin = json['h_tuvshin'] as String
    ..heregjilt = (json['heregjilt'] as num)?.toDouble()
    ..heregjiltTailan = json['heregjilt_tailan'] as String
    ..hotolborId = json['hotolbor_id'] as int
    ..id = json['id'] as int
    ..jilId = json['jil_id'] as int
    ..tosov = (json['tosov'] as num)?.toDouble();
}

Map<String, dynamic>
    _$Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor$SubHotolborUzuuleltToJson(
            Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor$SubHotolborUzuulelt
                instance) =>
        <String, dynamic>{
          'h_tuvshin': instance.hTuvshin,
          'heregjilt': instance.heregjilt,
          'heregjilt_tailan': instance.heregjiltTailan,
          'hotolbor_id': instance.hotolborId,
          'id': instance.id,
          'jil_id': instance.jilId,
          'tosov': instance.tosov,
        };

Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor
    _$Paginatedszhhotolbor$Query$Paginate$DsZgHotolborFromJson(
        Map<String, dynamic> json) {
  return Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor()
    ..argaHemjee = json['arga_hemjee'] as String
    ..dedZorilt = json['ded_zorilt'] as String
    ..eUusver = json['e_uusver'] as String
    ..hBaiguullagaId = json['h_baiguullaga_id'] as String
    ..hotolbor = json['hotolbor'] as String
    ..hugatsaa = json['hugatsaa'] as String
    ..id = json['id'] as int
    ..niitTosov = (json['niit_tosov'] as num)?.toDouble()
    ..status = json['status'] as String
    ..suuriTuvshin = json['suuri_tuvshin'] as String
    ..tolovId = json['tolov_id'] as int
    ..zorilt = json['zorilt'] as String
    ..subHotolborUzuulelt = (json['sub_hotolbor_uzuulelt'] as List)
        ?.map((e) => e == null
            ? null
            : Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor$SubHotolborUzuulelt
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Paginatedszhhotolbor$Query$Paginate$DsZgHotolborToJson(
        Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor instance) =>
    <String, dynamic>{
      'arga_hemjee': instance.argaHemjee,
      'ded_zorilt': instance.dedZorilt,
      'e_uusver': instance.eUusver,
      'h_baiguullaga_id': instance.hBaiguullagaId,
      'hotolbor': instance.hotolbor,
      'hugatsaa': instance.hugatsaa,
      'id': instance.id,
      'niit_tosov': instance.niitTosov,
      'status': instance.status,
      'suuri_tuvshin': instance.suuriTuvshin,
      'tolov_id': instance.tolovId,
      'zorilt': instance.zorilt,
      'sub_hotolbor_uzuulelt':
          instance.subHotolborUzuulelt?.map((e) => e?.toJson())?.toList(),
    };

Paginatedszhhotolbor$Query$Paginate
    _$Paginatedszhhotolbor$Query$PaginateFromJson(Map<String, dynamic> json) {
  return Paginatedszhhotolbor$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsZgHotolbor = (json['ds_zg_hotolbor'] as List)
        ?.map((e) => e == null
            ? null
            : Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Paginatedszhhotolbor$Query$PaginateToJson(
        Paginatedszhhotolbor$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_zg_hotolbor':
          instance.dsZgHotolbor?.map((e) => e?.toJson())?.toList(),
    };

Paginatedszhhotolbor$Query _$Paginatedszhhotolbor$QueryFromJson(
    Map<String, dynamic> json) {
  return Paginatedszhhotolbor$Query()
    ..paginate = json['paginate'] == null
        ? null
        : Paginatedszhhotolbor$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Paginatedszhhotolbor$QueryToJson(
        Paginatedszhhotolbor$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginatedszhhotolborArguments _$PaginatedszhhotolborArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginatedszhhotolborArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginatedszhhotolborArgumentsToJson(
        PaginatedszhhotolborArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
