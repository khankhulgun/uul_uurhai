// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heregjilt_guitsetgel.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichig
    _$BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichigFromJson(
        Map<String, dynamic> json) {
  return BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichig()
    ..heregjiltId = json['heregjilt_id'] as int
    ..id = json['id'] as int
    ..ognoo = json['ognoo'] as String
    ..salbar = json['salbar'] as String
    ..salbarId = json['salbar_id'] as int
    ..shat = json['shat'] as String
    ..tableId = json['table_id'] as int
    ..tailan = json['tailan'] as String;
}

Map<String, dynamic>
    _$BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichigToJson(
            BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichig
                instance) =>
        <String, dynamic>{
          'heregjilt_id': instance.heregjiltId,
          'id': instance.id,
          'ognoo': instance.ognoo,
          'salbar': instance.salbar,
          'salbar_id': instance.salbarId,
          'shat': instance.shat,
          'table_id': instance.tableId,
          'tailan': instance.tailan,
        };

BodlogoBb$Query$Paginate$DsBodlogoBb
    _$BodlogoBb$Query$Paginate$DsBodlogoBbFromJson(Map<String, dynamic> json) {
  return BodlogoBb$Query$Paginate$DsBodlogoBb()
    ..bGazarId = json['b_gazar_id'] as int
    ..gHuvi = (json['g_huvi'] as num)?.toDouble()
    ..id = json['id'] as int
    ..ner = json['ner'] as String
    ..tHugatsaa = json['t_hugatsaa'] as String
    ..tHugatsaaId = json['t_hugatsaa_id'] as int
    ..dsSubHeregjiltBodlogBarimtBichig = (json[
            'ds_sub_heregjilt_bodlog_barimt_bichig'] as List)
        ?.map((e) => e == null
            ? null
            : BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichig
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$BodlogoBb$Query$Paginate$DsBodlogoBbToJson(
        BodlogoBb$Query$Paginate$DsBodlogoBb instance) =>
    <String, dynamic>{
      'b_gazar_id': instance.bGazarId,
      'g_huvi': instance.gHuvi,
      'id': instance.id,
      'ner': instance.ner,
      't_hugatsaa': instance.tHugatsaa,
      't_hugatsaa_id': instance.tHugatsaaId,
      'ds_sub_heregjilt_bodlog_barimt_bichig': instance
          .dsSubHeregjiltBodlogBarimtBichig
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

BodlogoBb$Query$Paginate _$BodlogoBb$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return BodlogoBb$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsBodlogoBb = (json['ds_bodlogo_bb'] as List)
        ?.map((e) => e == null
            ? null
            : BodlogoBb$Query$Paginate$DsBodlogoBb.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$BodlogoBb$Query$PaginateToJson(
        BodlogoBb$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_bodlogo_bb': instance.dsBodlogoBb?.map((e) => e?.toJson())?.toList(),
    };

BodlogoBb$Query _$BodlogoBb$QueryFromJson(Map<String, dynamic> json) {
  return BodlogoBb$Query()
    ..paginate = json['paginate'] == null
        ? null
        : BodlogoBb$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BodlogoBb$QueryToJson(BodlogoBb$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

MuHuuliHegejilt$Query$Paginate$AaMuHuuliHegejilt$DsSubHeregjilt
    _$MuHuuliHegejilt$Query$Paginate$AaMuHuuliHegejilt$DsSubHeregjiltFromJson(
        Map<String, dynamic> json) {
  return MuHuuliHegejilt$Query$Paginate$AaMuHuuliHegejilt$DsSubHeregjilt()
    ..heregjiltId = json['heregjilt_id'] as int
    ..id = json['id'] as int
    ..ognoo = json['ognoo'] as String
    ..salbar = json['salbar'] as String
    ..salbarId = json['salbar_id'] as int
    ..shat = json['shat'] as String
    ..tableId = json['table_id'] as int
    ..tailan = json['tailan'] as String;
}

Map<String, dynamic>
    _$MuHuuliHegejilt$Query$Paginate$AaMuHuuliHegejilt$DsSubHeregjiltToJson(
            MuHuuliHegejilt$Query$Paginate$AaMuHuuliHegejilt$DsSubHeregjilt
                instance) =>
        <String, dynamic>{
          'heregjilt_id': instance.heregjiltId,
          'id': instance.id,
          'ognoo': instance.ognoo,
          'salbar': instance.salbar,
          'salbar_id': instance.salbarId,
          'shat': instance.shat,
          'table_id': instance.tableId,
          'tailan': instance.tailan,
        };

MuHuuliHegejilt$Query$Paginate$AaMuHuuliHegejilt
    _$MuHuuliHegejilt$Query$Paginate$AaMuHuuliHegejiltFromJson(
        Map<String, dynamic> json) {
  return MuHuuliHegejilt$Query$Paginate$AaMuHuuliHegejilt()
    ..gHuvi = (json['g_huvi'] as num)?.toDouble()
    ..id = json['id'] as int
    ..tHugatsaaId = json['t_hugatsaa_id'] as String
    ..dsSubHeregjilt = (json['ds_sub_heregjilt'] as List)
        ?.map((e) => e == null
            ? null
            : MuHuuliHegejilt$Query$Paginate$AaMuHuuliHegejilt$DsSubHeregjilt
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$MuHuuliHegejilt$Query$Paginate$AaMuHuuliHegejiltToJson(
        MuHuuliHegejilt$Query$Paginate$AaMuHuuliHegejilt instance) =>
    <String, dynamic>{
      'g_huvi': instance.gHuvi,
      'id': instance.id,
      't_hugatsaa_id': instance.tHugatsaaId,
      'ds_sub_heregjilt':
          instance.dsSubHeregjilt?.map((e) => e?.toJson())?.toList(),
    };

MuHuuliHegejilt$Query$Paginate _$MuHuuliHegejilt$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return MuHuuliHegejilt$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..aaMuHuuliHegejilt = (json['aa_mu_huuli_hegejilt'] as List)
        ?.map((e) => e == null
            ? null
            : MuHuuliHegejilt$Query$Paginate$AaMuHuuliHegejilt.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$MuHuuliHegejilt$Query$PaginateToJson(
        MuHuuliHegejilt$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'aa_mu_huuli_hegejilt':
          instance.aaMuHuuliHegejilt?.map((e) => e?.toJson())?.toList(),
    };

MuHuuliHegejilt$Query _$MuHuuliHegejilt$QueryFromJson(
    Map<String, dynamic> json) {
  return MuHuuliHegejilt$Query()
    ..paginate = json['paginate'] == null
        ? null
        : MuHuuliHegejilt$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MuHuuliHegejilt$QueryToJson(
        MuHuuliHegejilt$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt$DsSubHeregjiltUlsIhHural
    _$UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt$DsSubHeregjiltUlsIhHuralFromJson(
        Map<String, dynamic> json) {
  return UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt$DsSubHeregjiltUlsIhHural()
    ..heregjiltId = json['heregjilt_id'] as int
    ..id = json['id'] as int
    ..ognoo = json['ognoo'] as String
    ..salbar = json['salbar'] as String
    ..salbarId = json['salbar_id'] as int
    ..shat = json['shat'] as String
    ..tableId = json['table_id'] as int
    ..tailan = json['tailan'] as String;
}

Map<String, dynamic>
    _$UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt$DsSubHeregjiltUlsIhHuralToJson(
            UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt$DsSubHeregjiltUlsIhHural
                instance) =>
        <String, dynamic>{
          'heregjilt_id': instance.heregjiltId,
          'id': instance.id,
          'ognoo': instance.ognoo,
          'salbar': instance.salbar,
          'salbar_id': instance.salbarId,
          'shat': instance.shat,
          'table_id': instance.tableId,
          'tailan': instance.tailan,
        };

UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt
    _$UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjiltFromJson(
        Map<String, dynamic> json) {
  return UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt()
    ..gHuvi = (json['g_huvi'] as num)?.toDouble()
    ..id = json['id'] as int
    ..tHugatsaa = json['t_hugatsaa'] as String
    ..tHugatsaaId = json['t_hugatsaa_id'] as int
    ..togtool = json['togtool'] as String
    ..togtoolId = json['togtool_id'] as int
    ..dsSubHeregjiltUlsIhHural = (json['ds_sub_heregjilt_uls_ih_hural'] as List)
        ?.map((e) => e == null
            ? null
            : UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt$DsSubHeregjiltUlsIhHural
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String,
    dynamic> _$UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjiltToJson(
        UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt instance) =>
    <String, dynamic>{
      'g_huvi': instance.gHuvi,
      'id': instance.id,
      't_hugatsaa': instance.tHugatsaa,
      't_hugatsaa_id': instance.tHugatsaaId,
      'togtool': instance.togtool,
      'togtool_id': instance.togtoolId,
      'ds_sub_heregjilt_uls_ih_hural':
          instance.dsSubHeregjiltUlsIhHural?.map((e) => e?.toJson())?.toList(),
    };

UihTogtoolHeregjilt$Query$Paginate _$UihTogtoolHeregjilt$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return UihTogtoolHeregjilt$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsUihTogtoolHeregjilt = (json['ds_uih_togtool_heregjilt'] as List)
        ?.map((e) => e == null
            ? null
            : UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$UihTogtoolHeregjilt$Query$PaginateToJson(
        UihTogtoolHeregjilt$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_uih_togtool_heregjilt':
          instance.dsUihTogtoolHeregjilt?.map((e) => e?.toJson())?.toList(),
    };

UihTogtoolHeregjilt$Query _$UihTogtoolHeregjilt$QueryFromJson(
    Map<String, dynamic> json) {
  return UihTogtoolHeregjilt$Query()
    ..paginate = json['paginate'] == null
        ? null
        : UihTogtoolHeregjilt$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UihTogtoolHeregjilt$QueryToJson(
        UihTogtoolHeregjilt$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt$DsSubHeregjiltZgTogtool
    _$ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt$DsSubHeregjiltZgTogtoolFromJson(
        Map<String, dynamic> json) {
  return ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt$DsSubHeregjiltZgTogtool()
    ..heregjiltId = json['heregjilt_id'] as int
    ..id = json['id'] as int
    ..ognoo = json['ognoo'] as String
    ..salbar = json['salbar'] as String
    ..salbarId = json['salbar_id'] as int
    ..shat = json['shat'] as String
    ..tableId = json['table_id'] as int
    ..tailan = json['tailan'] as String;
}

Map<String, dynamic>
    _$ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt$DsSubHeregjiltZgTogtoolToJson(
            ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt$DsSubHeregjiltZgTogtool
                instance) =>
        <String, dynamic>{
          'heregjilt_id': instance.heregjiltId,
          'id': instance.id,
          'ognoo': instance.ognoo,
          'salbar': instance.salbar,
          'salbar_id': instance.salbarId,
          'shat': instance.shat,
          'table_id': instance.tableId,
          'tailan': instance.tailan,
        };

ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt
    _$ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjiltFromJson(
        Map<String, dynamic> json) {
  return ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt()
    ..gHuvi = (json['g_huvi'] as num)?.toDouble()
    ..id = json['id'] as int
    ..tHugatsaa = json['t_hugatsaa'] as String
    ..tHugatsaaId = json['t_hugatsaa_id'] as int
    ..togtool = json['togtool'] as String
    ..zgTogtoolId = json['zg_togtool_id'] as int
    ..dsSubHeregjiltZgTogtool = (json['ds_sub_heregjilt_zg_togtool'] as List)
        ?.map((e) => e == null
            ? null
            : ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt$DsSubHeregjiltZgTogtool
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic>
    _$ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjiltToJson(
            ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt instance) =>
        <String, dynamic>{
          'g_huvi': instance.gHuvi,
          'id': instance.id,
          't_hugatsaa': instance.tHugatsaa,
          't_hugatsaa_id': instance.tHugatsaaId,
          'togtool': instance.togtool,
          'zg_togtool_id': instance.zgTogtoolId,
          'ds_sub_heregjilt_zg_togtool': instance.dsSubHeregjiltZgTogtool
              ?.map((e) => e?.toJson())
              ?.toList(),
        };

ZgTogtoolHeregjilt$Query$Paginate _$ZgTogtoolHeregjilt$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return ZgTogtoolHeregjilt$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsZgTogtoolHeregjilt = (json['ds_zg_togtool_heregjilt'] as List)
        ?.map((e) => e == null
            ? null
            : ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ZgTogtoolHeregjilt$Query$PaginateToJson(
        ZgTogtoolHeregjilt$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_zg_togtool_heregjilt':
          instance.dsZgTogtoolHeregjilt?.map((e) => e?.toJson())?.toList(),
    };

ZgTogtoolHeregjilt$Query _$ZgTogtoolHeregjilt$QueryFromJson(
    Map<String, dynamic> json) {
  return ZgTogtoolHeregjilt$Query()
    ..paginate = json['paginate'] == null
        ? null
        : ZgTogtoolHeregjilt$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ZgTogtoolHeregjilt$QueryToJson(
        ZgTogtoolHeregjilt$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

AjilHeseg$Query$Paginate$DsAjilHeseg
    _$AjilHeseg$Query$Paginate$DsAjilHesegFromJson(Map<String, dynamic> json) {
  return AjilHeseg$Query$Paginate$DsAjilHeseg()
    ..aHesegId = json['a_heseg_id'] as int
    ..ahChigId = json['ah_chig_id'] as String
    ..ajilHeseg = json['ajil_heseg'] as String
    ..bGazarId = json['b_gazar_id'] as int
    ..gHuvi = json['g_huvi'] as String
    ..id = json['id'] as int
    ..jil = json['jil'] as String
    ..jilId = json['jil_id'] as int
    ..salbar = json['salbar'] as String
    ..status = json['status'] as String
    ..tolovId = json['tolov_id'] as int
    ..tuDugaar = json['tu_dugaar'] as String
    ..yvntsOgnoo = json['yvnts_ognoo'] == null
        ? null
        : DateTime.parse(json['yvnts_ognoo'] as String)
    ..yvtsTailan = json['yvts_tailan'] as String;
}

Map<String, dynamic> _$AjilHeseg$Query$Paginate$DsAjilHesegToJson(
        AjilHeseg$Query$Paginate$DsAjilHeseg instance) =>
    <String, dynamic>{
      'a_heseg_id': instance.aHesegId,
      'ah_chig_id': instance.ahChigId,
      'ajil_heseg': instance.ajilHeseg,
      'b_gazar_id': instance.bGazarId,
      'g_huvi': instance.gHuvi,
      'id': instance.id,
      'jil': instance.jil,
      'jil_id': instance.jilId,
      'salbar': instance.salbar,
      'status': instance.status,
      'tolov_id': instance.tolovId,
      'tu_dugaar': instance.tuDugaar,
      'yvnts_ognoo': instance.yvntsOgnoo?.toIso8601String(),
      'yvts_tailan': instance.yvtsTailan,
    };

AjilHeseg$Query$Paginate _$AjilHeseg$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return AjilHeseg$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsAjilHeseg = (json['ds_ajil_heseg'] as List)
        ?.map((e) => e == null
            ? null
            : AjilHeseg$Query$Paginate$DsAjilHeseg.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AjilHeseg$Query$PaginateToJson(
        AjilHeseg$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_ajil_heseg': instance.dsAjilHeseg?.map((e) => e?.toJson())?.toList(),
    };

AjilHeseg$Query _$AjilHeseg$QueryFromJson(Map<String, dynamic> json) {
  return AjilHeseg$Query()
    ..paginate = json['paginate'] == null
        ? null
        : AjilHeseg$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AjilHeseg$QueryToJson(AjilHeseg$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTH
    _$HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTHFromJson(
        Map<String, dynamic> json) {
  return HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTH()
    ..hBaidal = json['h_baidal'] as String
    ..hEhUusverId = json['h_eh_uusver_id'] as int
    ..heregjiltHuvi = json['heregjilt_huvi'] as String
    ..heregjuulegch = json['heregjuulegch'] as String
    ..horongooruulalt = json['horongooruulalt'] as String
    ..hugatsaa = json['hugatsaa'] as String
    ..id = json['id'] as int
    ..tosliinZardal = (json['tosliin_zardal'] as num)?.toDouble()
    ..tosolNer = json['tosol_ner'] as String
    ..tosovtOrtog = (json['tosovt_ortog'] as num)?.toDouble();
}

Map<String, dynamic>
    _$HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTHToJson(
            HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTH instance) =>
        <String, dynamic>{
          'h_baidal': instance.hBaidal,
          'h_eh_uusver_id': instance.hEhUusverId,
          'heregjilt_huvi': instance.heregjiltHuvi,
          'heregjuulegch': instance.heregjuulegch,
          'horongooruulalt': instance.horongooruulalt,
          'hugatsaa': instance.hugatsaa,
          'id': instance.id,
          'tosliin_zardal': instance.tosliinZardal,
          'tosol_ner': instance.tosolNer,
          'tosovt_ortog': instance.tosovtOrtog,
        };

HorongoOruulaltTH$Query$Paginate _$HorongoOruulaltTH$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return HorongoOruulaltTH$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsHorongoOruulaltTH = (json['ds_horongo_oruulalt_t_h'] as List)
        ?.map((e) => e == null
            ? null
            : HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTH.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$HorongoOruulaltTH$Query$PaginateToJson(
        HorongoOruulaltTH$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_horongo_oruulalt_t_h':
          instance.dsHorongoOruulaltTH?.map((e) => e?.toJson())?.toList(),
    };

HorongoOruulaltTH$Query _$HorongoOruulaltTH$QueryFromJson(
    Map<String, dynamic> json) {
  return HorongoOruulaltTH$Query()
    ..paginate = json['paginate'] == null
        ? null
        : HorongoOruulaltTH$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$HorongoOruulaltTH$QueryToJson(
        HorongoOruulaltTH$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

BodlogoBbArguments _$BodlogoBbArgumentsFromJson(Map<String, dynamic> json) {
  return BodlogoBbArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$BodlogoBbArgumentsToJson(BodlogoBbArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

MuHuuliHegejiltArguments _$MuHuuliHegejiltArgumentsFromJson(
    Map<String, dynamic> json) {
  return MuHuuliHegejiltArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$MuHuuliHegejiltArgumentsToJson(
        MuHuuliHegejiltArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

UihTogtoolHeregjiltArguments _$UihTogtoolHeregjiltArgumentsFromJson(
    Map<String, dynamic> json) {
  return UihTogtoolHeregjiltArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$UihTogtoolHeregjiltArgumentsToJson(
        UihTogtoolHeregjiltArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

ZgTogtoolHeregjiltArguments _$ZgTogtoolHeregjiltArgumentsFromJson(
    Map<String, dynamic> json) {
  return ZgTogtoolHeregjiltArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$ZgTogtoolHeregjiltArgumentsToJson(
        ZgTogtoolHeregjiltArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

AjilHesegArguments _$AjilHesegArgumentsFromJson(Map<String, dynamic> json) {
  return AjilHesegArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$AjilHesegArgumentsToJson(AjilHesegArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

HorongoOruulaltTHArguments _$HorongoOruulaltTHArgumentsFromJson(
    Map<String, dynamic> json) {
  return HorongoOruulaltTHArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$HorongoOruulaltTHArgumentsToJson(
        HorongoOruulaltTHArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
