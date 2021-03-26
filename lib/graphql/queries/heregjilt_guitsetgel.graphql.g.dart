// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heregjilt_guitsetgel.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginateajilHeseg$Query$Paginate$DsAjilHeseg
    _$PaginateajilHeseg$Query$Paginate$DsAjilHesegFromJson(
        Map<String, dynamic> json) {
  return PaginateajilHeseg$Query$Paginate$DsAjilHeseg()
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

Map<String, dynamic> _$PaginateajilHeseg$Query$Paginate$DsAjilHesegToJson(
        PaginateajilHeseg$Query$Paginate$DsAjilHeseg instance) =>
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

PaginateajilHeseg$Query$Paginate _$PaginateajilHeseg$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return PaginateajilHeseg$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsAjilHeseg = (json['ds_ajil_heseg'] as List)
        ?.map((e) => e == null
            ? null
            : PaginateajilHeseg$Query$Paginate$DsAjilHeseg.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginateajilHeseg$Query$PaginateToJson(
        PaginateajilHeseg$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_ajil_heseg': instance.dsAjilHeseg?.map((e) => e?.toJson())?.toList(),
    };

PaginateajilHeseg$Query _$PaginateajilHeseg$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginateajilHeseg$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginateajilHeseg$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginateajilHeseg$QueryToJson(
        PaginateajilHeseg$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginatehorOrTusulHut$Query$Paginate$DsHorongoOruulaltTH
    _$PaginatehorOrTusulHut$Query$Paginate$DsHorongoOruulaltTHFromJson(
        Map<String, dynamic> json) {
  return PaginatehorOrTusulHut$Query$Paginate$DsHorongoOruulaltTH()
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

Map<String,
    dynamic> _$PaginatehorOrTusulHut$Query$Paginate$DsHorongoOruulaltTHToJson(
        PaginatehorOrTusulHut$Query$Paginate$DsHorongoOruulaltTH instance) =>
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

PaginatehorOrTusulHut$Query$Paginate
    _$PaginatehorOrTusulHut$Query$PaginateFromJson(Map<String, dynamic> json) {
  return PaginatehorOrTusulHut$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsHorongoOruulaltTH = (json['ds_horongo_oruulalt_t_h'] as List)
        ?.map((e) => e == null
            ? null
            : PaginatehorOrTusulHut$Query$Paginate$DsHorongoOruulaltTH.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginatehorOrTusulHut$Query$PaginateToJson(
        PaginatehorOrTusulHut$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_horongo_oruulalt_t_h':
          instance.dsHorongoOruulaltTH?.map((e) => e?.toJson())?.toList(),
    };

PaginatehorOrTusulHut$Query _$PaginatehorOrTusulHut$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginatehorOrTusulHut$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginatehorOrTusulHut$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginatehorOrTusulHut$QueryToJson(
        PaginatehorOrTusulHut$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginateajilHesegArguments _$PaginateajilHesegArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginateajilHesegArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginateajilHesegArgumentsToJson(
        PaginateajilHesegArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginatehorOrTusulHutArguments _$PaginatehorOrTusulHutArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginatehorOrTusulHutArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginatehorOrTusulHutArgumentsToJson(
        PaginatehorOrTusulHutArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
