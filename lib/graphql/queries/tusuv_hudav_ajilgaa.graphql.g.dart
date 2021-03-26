// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tusuv_hudav_ajilgaa.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatehudAvAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaa
    _$PaginatehudAvAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaaFromJson(
        Map<String, dynamic> json) {
  return PaginatehudAvAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaa()
    ..bUNer = json['b_u_ner'] as String
    ..batlagdsanOrtogOrtov = (json['batlagdsan_ortog_ortov'] as num)?.toDouble()
    ..gereenDun = (json['gereen_dun'] as num)?.toDouble()
    ..guitsetgegchB = json['guitsetgegch_b'] as String
    ..haaTorol = json['haa_torol'] as String
    ..habUId = json['hab_u_id'] as int
    ..id = json['id'] as int
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..sShalagruulaltId = json['s_shalagruulalt_id'] as int
    ..shalagruulalt = json['shalagruulalt'] as String
    ..tailbar = json['tailbar'] as String
    ..tenderOgnoo = json['tender_ognoo'] == null
        ? null
        : DateTime.parse(json['tender_ognoo'] as String);
}

Map<String,
    dynamic> _$PaginatehudAvAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaaToJson(
        PaginatehudAvAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaa instance) =>
    <String, dynamic>{
      'b_u_ner': instance.bUNer,
      'batlagdsan_ortog_ortov': instance.batlagdsanOrtogOrtov,
      'gereen_dun': instance.gereenDun,
      'guitsetgegch_b': instance.guitsetgegchB,
      'haa_torol': instance.haaTorol,
      'hab_u_id': instance.habUId,
      'id': instance.id,
      'ognoo': instance.ognoo?.toIso8601String(),
      's_shalagruulalt_id': instance.sShalagruulaltId,
      'shalagruulalt': instance.shalagruulalt,
      'tailbar': instance.tailbar,
      'tender_ognoo': instance.tenderOgnoo?.toIso8601String(),
    };

PaginatehudAvAjilgaa$Query$Paginate
    _$PaginatehudAvAjilgaa$Query$PaginateFromJson(Map<String, dynamic> json) {
  return PaginatehudAvAjilgaa$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsHudaldanAvahAjilgaa = (json['ds_hudaldan_avah_ajilgaa'] as List)
        ?.map((e) => e == null
            ? null
            : PaginatehudAvAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaa
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginatehudAvAjilgaa$Query$PaginateToJson(
        PaginatehudAvAjilgaa$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_hudaldan_avah_ajilgaa':
          instance.dsHudaldanAvahAjilgaa?.map((e) => e?.toJson())?.toList(),
    };

PaginatehudAvAjilgaa$Query _$PaginatehudAvAjilgaa$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginatehudAvAjilgaa$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginatehudAvAjilgaa$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginatehudAvAjilgaa$QueryToJson(
        PaginatehudAvAjilgaa$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginatetosviinOrlogo$Query$Paginate$DsTosviinOrlogo
    _$PaginatetosviinOrlogo$Query$Paginate$DsTosviinOrlogoFromJson(
        Map<String, dynamic> json) {
  return PaginatetosviinOrlogo$Query$Paginate$DsTosviinOrlogo()
    ..bTosov = (json['b_tosov'] as num)?.toDouble()
    ..id = json['id'] as int
    ..jileer = (json['jileer'] as num)?.toDouble()
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..orlogoTorol = json['orlogo_torol'] as String
    ..orlogoTorolId = json['orlogo_torol_id'] as int
    ..tTosov = (json['t_tosov'] as num)?.toDouble()
    ..tUyTolovlogoo = (json['t_uy_tolovlogoo'] as num)?.toDouble()
    ..tailanUyGuitsetgel = (json['tailan_uy_guitsetgel'] as num)?.toDouble()
    ..tailantUy = (json['tailant_uy'] as num)?.toDouble();
}

Map<String, dynamic>
    _$PaginatetosviinOrlogo$Query$Paginate$DsTosviinOrlogoToJson(
            PaginatetosviinOrlogo$Query$Paginate$DsTosviinOrlogo instance) =>
        <String, dynamic>{
          'b_tosov': instance.bTosov,
          'id': instance.id,
          'jileer': instance.jileer,
          'ognoo': instance.ognoo?.toIso8601String(),
          'orlogo_torol': instance.orlogoTorol,
          'orlogo_torol_id': instance.orlogoTorolId,
          't_tosov': instance.tTosov,
          't_uy_tolovlogoo': instance.tUyTolovlogoo,
          'tailan_uy_guitsetgel': instance.tailanUyGuitsetgel,
          'tailant_uy': instance.tailantUy,
        };

PaginatetosviinOrlogo$Query$Paginate
    _$PaginatetosviinOrlogo$Query$PaginateFromJson(Map<String, dynamic> json) {
  return PaginatetosviinOrlogo$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsTosviinOrlogo = (json['ds_tosviin_orlogo'] as List)
        ?.map((e) => e == null
            ? null
            : PaginatetosviinOrlogo$Query$Paginate$DsTosviinOrlogo.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginatetosviinOrlogo$Query$PaginateToJson(
        PaginatetosviinOrlogo$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_tosviin_orlogo':
          instance.dsTosviinOrlogo?.map((e) => e?.toJson())?.toList(),
    };

PaginatetosviinOrlogo$Query _$PaginatetosviinOrlogo$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginatetosviinOrlogo$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginatetosviinOrlogo$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginatetosviinOrlogo$QueryToJson(
        PaginatetosviinOrlogo$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginatetosovZarlaga$Query$Paginate$DsTosovZarlaga
    _$PaginatetosovZarlaga$Query$Paginate$DsTosovZarlagaFromJson(
        Map<String, dynamic> json) {
  return PaginatetosovZarlaga$Query$Paginate$DsTosovZarlaga()
    ..bTosov = (json['b_tosov'] as num)?.toDouble()
    ..guitsetgel = (json['guitsetgel'] as num)?.toDouble()
    ..guitstgel = (json['guitstgel'] as num)?.toDouble()
    ..id = json['id'] as int
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..tTosov = (json['t_tosov'] as num)?.toDouble()
    ..torol = json['torol'] as String
    ..zardalTorolId = json['zardal_torol_id'] as int;
}

Map<String, dynamic> _$PaginatetosovZarlaga$Query$Paginate$DsTosovZarlagaToJson(
        PaginatetosovZarlaga$Query$Paginate$DsTosovZarlaga instance) =>
    <String, dynamic>{
      'b_tosov': instance.bTosov,
      'guitsetgel': instance.guitsetgel,
      'guitstgel': instance.guitstgel,
      'id': instance.id,
      'ognoo': instance.ognoo?.toIso8601String(),
      't_tosov': instance.tTosov,
      'torol': instance.torol,
      'zardal_torol_id': instance.zardalTorolId,
    };

PaginatetosovZarlaga$Query$Paginate
    _$PaginatetosovZarlaga$Query$PaginateFromJson(Map<String, dynamic> json) {
  return PaginatetosovZarlaga$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsTosovZarlaga = (json['ds_tosov_zarlaga'] as List)
        ?.map((e) => e == null
            ? null
            : PaginatetosovZarlaga$Query$Paginate$DsTosovZarlaga.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginatetosovZarlaga$Query$PaginateToJson(
        PaginatetosovZarlaga$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_tosov_zarlaga':
          instance.dsTosovZarlaga?.map((e) => e?.toJson())?.toList(),
    };

PaginatetosovZarlaga$Query _$PaginatetosovZarlaga$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginatetosovZarlaga$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginatetosovZarlaga$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginatetosovZarlaga$QueryToJson(
        PaginatetosovZarlaga$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginatehudAvAjilgaaArguments _$PaginatehudAvAjilgaaArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginatehudAvAjilgaaArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginatehudAvAjilgaaArgumentsToJson(
        PaginatehudAvAjilgaaArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginatetosviinOrlogoArguments _$PaginatetosviinOrlogoArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginatetosviinOrlogoArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginatetosviinOrlogoArgumentsToJson(
        PaginatetosviinOrlogoArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginatetosovZarlagaArguments _$PaginatetosovZarlagaArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginatetosovZarlagaArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginatetosovZarlagaArgumentsToJson(
        PaginatetosovZarlagaArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
