// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'huuli_togtoolmj.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Paginatemuhuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaalt
    _$Paginatemuhuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaaltFromJson(
        Map<String, dynamic> json) {
  return Paginatemuhuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaalt()
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..zaalt = json['zaalt'] as String;
}

Map<String, dynamic>
    _$Paginatemuhuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaaltToJson(
            Paginatemuhuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaalt
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'table_id': instance.tableId,
          'zaalt': instance.zaalt,
        };

Paginatemuhuuli$Query$Paginate$AaMUlsHuuli
    _$Paginatemuhuuli$Query$Paginate$AaMUlsHuuliFromJson(
        Map<String, dynamic> json) {
  return Paginatemuhuuli$Query$Paginate$AaMUlsHuuli()
    ..holboos = json['holboos'] as String
    ..huuli = json['huuli'] as String
    ..id = json['id'] as int
    ..zaalt = json['zaalt'] as String
    ..subMUlsHuuliZaalt = (json['sub_m_uls_huuli_zaalt'] as List)
        ?.map((e) => e == null
            ? null
            : Paginatemuhuuli$Query$Paginate$AaMUlsHuuli$SubMUlsHuuliZaalt
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Paginatemuhuuli$Query$Paginate$AaMUlsHuuliToJson(
        Paginatemuhuuli$Query$Paginate$AaMUlsHuuli instance) =>
    <String, dynamic>{
      'holboos': instance.holboos,
      'huuli': instance.huuli,
      'id': instance.id,
      'zaalt': instance.zaalt,
      'sub_m_uls_huuli_zaalt':
          instance.subMUlsHuuliZaalt?.map((e) => e?.toJson())?.toList(),
    };

Paginatemuhuuli$Query$Paginate _$Paginatemuhuuli$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return Paginatemuhuuli$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..aaMUlsHuuli = (json['aa_m_uls_huuli'] as List)
        ?.map((e) => e == null
            ? null
            : Paginatemuhuuli$Query$Paginate$AaMUlsHuuli.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Paginatemuhuuli$Query$PaginateToJson(
        Paginatemuhuuli$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'aa_m_uls_huuli': instance.aaMUlsHuuli?.map((e) => e?.toJson())?.toList(),
    };

Paginatemuhuuli$Query _$Paginatemuhuuli$QueryFromJson(
    Map<String, dynamic> json) {
  return Paginatemuhuuli$Query()
    ..paginate = json['paginate'] == null
        ? null
        : Paginatemuhuuli$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Paginatemuhuuli$QueryToJson(
        Paginatemuhuuli$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaalt
    _$PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaaltFromJson(
        Map<String, dynamic> json) {
  return PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaalt()
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..zaalt = json['zaalt'] as String;
}

Map<String, dynamic>
    _$PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaaltToJson(
            PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaalt
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'table_id': instance.tableId,
          'zaalt': instance.zaalt,
        };

PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool
    _$PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtoolFromJson(
        Map<String, dynamic> json) {
  return PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool()
    ..holhoos = json['holhoos'] as String
    ..id = json['id'] as int
    ..togtool = json['togtool'] as String
    ..zaalt = json['zaalt'] as String
    ..subUihZaalt = (json['sub_uih_zaalt'] as List)
        ?.map((e) => e == null
            ? null
            : PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool$SubUihZaalt
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic>
    _$PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtoolToJson(
            PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool instance) =>
        <String, dynamic>{
          'holhoos': instance.holhoos,
          'id': instance.id,
          'togtool': instance.togtool,
          'zaalt': instance.zaalt,
          'sub_uih_zaalt':
              instance.subUihZaalt?.map((e) => e?.toJson())?.toList(),
        };

PaginauihTogtool$Query$Paginate _$PaginauihTogtool$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return PaginauihTogtool$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..aaUlsIhHuralTogtool = (json['aa_uls_ih_hural_togtool'] as List)
        ?.map((e) => e == null
            ? null
            : PaginauihTogtool$Query$Paginate$AaUlsIhHuralTogtool.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginauihTogtool$Query$PaginateToJson(
        PaginauihTogtool$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'aa_uls_ih_hural_togtool':
          instance.aaUlsIhHuralTogtool?.map((e) => e?.toJson())?.toList(),
    };

PaginauihTogtool$Query _$PaginauihTogtool$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginauihTogtool$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginauihTogtool$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginauihTogtool$QueryToJson(
        PaginauihTogtool$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichig
    _$Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichigFromJson(
        Map<String, dynamic> json) {
  return Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichig()
    ..bOgnoo = json['b_ognoo'] == null
        ? null
        : DateTime.parse(json['b_ognoo'] as String)
    ..holboos = json['holboos'] as String
    ..id = json['id'] as int
    ..ner = json['ner'] as String
    ..salbar = json['salbar'] as String
    ..salbarId = json['salbar_id'] as int
    ..tHugatsaa = json['t_hugatsaa'] as String
    ..tHugatsaaId = json['t_hugatsaa_id'] as int
    ..tShDugaar = json['t_sh_dugaar'] as String;
}

Map<String,
    dynamic> _$Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichigToJson(
        Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichig instance) =>
    <String, dynamic>{
      'b_ognoo': instance.bOgnoo?.toIso8601String(),
      'holboos': instance.holboos,
      'id': instance.id,
      'ner': instance.ner,
      'salbar': instance.salbar,
      'salbar_id': instance.salbarId,
      't_hugatsaa': instance.tHugatsaa,
      't_hugatsaa_id': instance.tHugatsaaId,
      't_sh_dugaar': instance.tShDugaar,
    };

Paginatebodbarbichig$Query$Paginate
    _$Paginatebodbarbichig$Query$PaginateFromJson(Map<String, dynamic> json) {
  return Paginatebodbarbichig$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsBodlogoBarimtBichig = (json['ds_bodlogo_barimt_bichig'] as List)
        ?.map((e) => e == null
            ? null
            : Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichig
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Paginatebodbarbichig$Query$PaginateToJson(
        Paginatebodbarbichig$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_bodlogo_barimt_bichig':
          instance.dsBodlogoBarimtBichig?.map((e) => e?.toJson())?.toList(),
    };

Paginatebodbarbichig$Query _$Paginatebodbarbichig$QueryFromJson(
    Map<String, dynamic> json) {
  return Paginatebodbarbichig$Query()
    ..paginate = json['paginate'] == null
        ? null
        : Paginatebodbarbichig$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Paginatebodbarbichig$QueryToJson(
        Paginatebodbarbichig$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginatezgTogtool$Query$Paginate$AaZgTogtool$SubZgTogtool
    _$PaginatezgTogtool$Query$Paginate$AaZgTogtool$SubZgTogtoolFromJson(
        Map<String, dynamic> json) {
  return PaginatezgTogtool$Query$Paginate$AaZgTogtool$SubZgTogtool()
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..zaalt = json['zaalt'] as String;
}

Map<String,
    dynamic> _$PaginatezgTogtool$Query$Paginate$AaZgTogtool$SubZgTogtoolToJson(
        PaginatezgTogtool$Query$Paginate$AaZgTogtool$SubZgTogtool instance) =>
    <String, dynamic>{
      'id': instance.id,
      'table_id': instance.tableId,
      'zaalt': instance.zaalt,
    };

PaginatezgTogtool$Query$Paginate$AaZgTogtool
    _$PaginatezgTogtool$Query$Paginate$AaZgTogtoolFromJson(
        Map<String, dynamic> json) {
  return PaginatezgTogtool$Query$Paginate$AaZgTogtool()
    ..holboos = json['holboos'] as String
    ..id = json['id'] as int
    ..togtool = json['togtool'] as String
    ..zaalt = json['zaalt'] as String
    ..subZgTogtool = (json['sub_zg_togtool'] as List)
        ?.map((e) => e == null
            ? null
            : PaginatezgTogtool$Query$Paginate$AaZgTogtool$SubZgTogtool
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginatezgTogtool$Query$Paginate$AaZgTogtoolToJson(
        PaginatezgTogtool$Query$Paginate$AaZgTogtool instance) =>
    <String, dynamic>{
      'holboos': instance.holboos,
      'id': instance.id,
      'togtool': instance.togtool,
      'zaalt': instance.zaalt,
      'sub_zg_togtool':
          instance.subZgTogtool?.map((e) => e?.toJson())?.toList(),
    };

PaginatezgTogtool$Query$Paginate _$PaginatezgTogtool$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return PaginatezgTogtool$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..aaZgTogtool = (json['aa_zg_togtool'] as List)
        ?.map((e) => e == null
            ? null
            : PaginatezgTogtool$Query$Paginate$AaZgTogtool.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginatezgTogtool$Query$PaginateToJson(
        PaginatezgTogtool$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'aa_zg_togtool': instance.aaZgTogtool?.map((e) => e?.toJson())?.toList(),
    };

PaginatezgTogtool$Query _$PaginatezgTogtool$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginatezgTogtool$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginatezgTogtool$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginatezgTogtool$QueryToJson(
        PaginatezgTogtool$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginateduremJuram$Query$Paginate$DsDuremJuram
    _$PaginateduremJuram$Query$Paginate$DsDuremJuramFromJson(
        Map<String, dynamic> json) {
  return PaginateduremJuram$Query$Paginate$DsDuremJuram()
    ..akt = json['akt'] as String
    ..dugaar = json['dugaar'] as String
    ..eZuinAktId = json['e_zuin_akt_id'] as int
    ..file = json['file'] as String
    ..id = json['id'] as int
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..tuhai = json['tuhai'] as String;
}

Map<String, dynamic> _$PaginateduremJuram$Query$Paginate$DsDuremJuramToJson(
        PaginateduremJuram$Query$Paginate$DsDuremJuram instance) =>
    <String, dynamic>{
      'akt': instance.akt,
      'dugaar': instance.dugaar,
      'e_zuin_akt_id': instance.eZuinAktId,
      'file': instance.file,
      'id': instance.id,
      'ognoo': instance.ognoo?.toIso8601String(),
      'tuhai': instance.tuhai,
    };

PaginateduremJuram$Query$Paginate _$PaginateduremJuram$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return PaginateduremJuram$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsDuremJuram = (json['ds_durem_juram'] as List)
        ?.map((e) => e == null
            ? null
            : PaginateduremJuram$Query$Paginate$DsDuremJuram.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginateduremJuram$Query$PaginateToJson(
        PaginateduremJuram$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_durem_juram':
          instance.dsDuremJuram?.map((e) => e?.toJson())?.toList(),
    };

PaginateduremJuram$Query _$PaginateduremJuram$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginateduremJuram$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginateduremJuram$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginateduremJuram$QueryToJson(
        PaginateduremJuram$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginatemuhuuliArguments _$PaginatemuhuuliArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginatemuhuuliArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginatemuhuuliArgumentsToJson(
        PaginatemuhuuliArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginauihTogtoolArguments _$PaginauihTogtoolArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginauihTogtoolArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginauihTogtoolArgumentsToJson(
        PaginauihTogtoolArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginatebodbarbichigArguments _$PaginatebodbarbichigArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginatebodbarbichigArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginatebodbarbichigArgumentsToJson(
        PaginatebodbarbichigArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginatezgTogtoolArguments _$PaginatezgTogtoolArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginatezgTogtoolArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginatezgTogtoolArgumentsToJson(
        PaginatezgTogtoolArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginateduremJuramArguments _$PaginateduremJuramArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginateduremJuramArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginateduremJuramArgumentsToJson(
        PaginateduremJuramArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
