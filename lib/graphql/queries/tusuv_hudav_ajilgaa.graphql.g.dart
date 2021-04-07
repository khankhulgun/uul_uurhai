// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tusuv_hudav_ajilgaa.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HudaldanAvahAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaa
    _$HudaldanAvahAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaaFromJson(
        Map<String, dynamic> json) {
  return HudaldanAvahAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaa()
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
    dynamic> _$HudaldanAvahAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaaToJson(
        HudaldanAvahAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaa instance) =>
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

HudaldanAvahAjilgaa$Query$Paginate _$HudaldanAvahAjilgaa$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return HudaldanAvahAjilgaa$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsHudaldanAvahAjilgaa = (json['ds_hudaldan_avah_ajilgaa'] as List)
        ?.map((e) => e == null
            ? null
            : HudaldanAvahAjilgaa$Query$Paginate$DsHudaldanAvahAjilgaa.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$HudaldanAvahAjilgaa$Query$PaginateToJson(
        HudaldanAvahAjilgaa$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_hudaldan_avah_ajilgaa':
          instance.dsHudaldanAvahAjilgaa?.map((e) => e?.toJson())?.toList(),
    };

HudaldanAvahAjilgaa$Query _$HudaldanAvahAjilgaa$QueryFromJson(
    Map<String, dynamic> json) {
  return HudaldanAvahAjilgaa$Query()
    ..paginate = json['paginate'] == null
        ? null
        : HudaldanAvahAjilgaa$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$HudaldanAvahAjilgaa$QueryToJson(
        HudaldanAvahAjilgaa$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

TosviinOrlogo$Query$Paginate$DsTosviinOrlogo
    _$TosviinOrlogo$Query$Paginate$DsTosviinOrlogoFromJson(
        Map<String, dynamic> json) {
  return TosviinOrlogo$Query$Paginate$DsTosviinOrlogo()
    ..bTTosovZoruu = (json['b_t_tosov_zoruu'] as num)?.toDouble()
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
    ..tailantUy = (json['tailant_uy'] as num)?.toDouble()
    ..zoruu = (json['zoruu'] as num)?.toDouble();
}

Map<String, dynamic> _$TosviinOrlogo$Query$Paginate$DsTosviinOrlogoToJson(
        TosviinOrlogo$Query$Paginate$DsTosviinOrlogo instance) =>
    <String, dynamic>{
      'b_t_tosov_zoruu': instance.bTTosovZoruu,
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
      'zoruu': instance.zoruu,
    };

TosviinOrlogo$Query$Paginate _$TosviinOrlogo$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return TosviinOrlogo$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsTosviinOrlogo = (json['ds_tosviin_orlogo'] as List)
        ?.map((e) => e == null
            ? null
            : TosviinOrlogo$Query$Paginate$DsTosviinOrlogo.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TosviinOrlogo$Query$PaginateToJson(
        TosviinOrlogo$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_tosviin_orlogo':
          instance.dsTosviinOrlogo?.map((e) => e?.toJson())?.toList(),
    };

TosviinOrlogo$Query _$TosviinOrlogo$QueryFromJson(Map<String, dynamic> json) {
  return TosviinOrlogo$Query()
    ..paginate = json['paginate'] == null
        ? null
        : TosviinOrlogo$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TosviinOrlogo$QueryToJson(
        TosviinOrlogo$Query instance) =>
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
    ..zardalTorolId = json['zardal_torol_id'] as int
    ..zoruu = (json['zoruu'] as num)?.toDouble();
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
      'zoruu': instance.zoruu,
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

HudaldanAvahAjilgaaArguments _$HudaldanAvahAjilgaaArgumentsFromJson(
    Map<String, dynamic> json) {
  return HudaldanAvahAjilgaaArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$HudaldanAvahAjilgaaArgumentsToJson(
        HudaldanAvahAjilgaaArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

TosviinOrlogoArguments _$TosviinOrlogoArgumentsFromJson(
    Map<String, dynamic> json) {
  return TosviinOrlogoArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$TosviinOrlogoArgumentsToJson(
        TosviinOrlogoArguments instance) =>
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
