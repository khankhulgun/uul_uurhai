// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tusulvvdiin_medeelel.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt
    _$OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborloltFromJson(
        Map<String, dynamic> json) {
  return OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt()
    ..ajilchinToo = (json['ajilchin_too'] as num)?.toDouble()
    ..bNoots = (json['b_noots'] as num)?.toDouble()
    ..bTorolId = json['b_torol_id'] as int
    ..buteegdehuun = json['buteegdehuun'] as String
    ..buteegdehuunId = json['buteegdehuun_id'] as int
    ..code = json['code'] as String
    ..id = json['id'] as int
    ..oEhelsenOn = json['o_ehelsen_on'] as String
    ..oHuchChadal = (json['o_huch_chadal'] as num)?.toDouble()
    ..tableId = json['table_id'] as int
    ..tezuBOn = json['tezu_b_on'] as String
    ..torol = json['torol'] as String
    ..torolCode = json['torol_code'] as String
    ..zurag = json['zurag'] as String;
}

Map<String, dynamic>
    _$OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborloltToJson(
            OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt
                instance) =>
        <String, dynamic>{
          'ajilchin_too': instance.ajilchinToo,
          'b_noots': instance.bNoots,
          'b_torol_id': instance.bTorolId,
          'buteegdehuun': instance.buteegdehuun,
          'buteegdehuun_id': instance.buteegdehuunId,
          'code': instance.code,
          'id': instance.id,
          'o_ehelsen_on': instance.oEhelsenOn,
          'o_huch_chadal': instance.oHuchChadal,
          'table_id': instance.tableId,
          'tezu_b_on': instance.tezuBOn,
          'torol': instance.torol,
          'torol_code': instance.torolCode,
          'zurag': instance.zurag,
        };

OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai
    _$OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhaiFromJson(
        Map<String, dynamic> json) {
  return OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai()
    ..ahNegjId = json['ah_negj_id'] as int
    ..aimagId = json['aimag_id'] as int
    ..aimagname = json['aimagname'] as String
    ..bagId = json['bag_id'] as int
    ..bagname = json['bagname'] as String
    ..id = json['id'] as int
    ..sumId = json['sum_id'] as int
    ..sumname = json['sumname'] as String
    ..tzDugaar = json['tz_dugaar'] as String
    ..uurkhainNer = json['uurkhain_ner'] as String
    ..dsSubOlborlolt = (json['ds_sub_olborlolt'] as List)
        ?.map((e) => e == null
            ? null
            : OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhaiToJson(
        OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai instance) =>
    <String, dynamic>{
      'ah_negj_id': instance.ahNegjId,
      'aimag_id': instance.aimagId,
      'aimagname': instance.aimagname,
      'bag_id': instance.bagId,
      'bagname': instance.bagname,
      'id': instance.id,
      'sum_id': instance.sumId,
      'sumname': instance.sumname,
      'tz_dugaar': instance.tzDugaar,
      'uurkhain_ner': instance.uurkhainNer,
      'ds_sub_olborlolt':
          instance.dsSubOlborlolt?.map((e) => e?.toJson())?.toList(),
    };

OlborloltUurkhai$Query$Paginate _$OlborloltUurkhai$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return OlborloltUurkhai$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsOlborloltUurkhai = (json['ds_olborlolt_uurkhai'] as List)
        ?.map((e) => e == null
            ? null
            : OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$OlborloltUurkhai$Query$PaginateToJson(
        OlborloltUurkhai$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_olborlolt_uurkhai':
          instance.dsOlborloltUurkhai?.map((e) => e?.toJson())?.toList(),
    };

OlborloltUurkhai$Query _$OlborloltUurkhai$QueryFromJson(
    Map<String, dynamic> json) {
  return OlborloltUurkhai$Query()
    ..paginate = json['paginate'] == null
        ? null
        : OlborloltUurkhai$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$OlborloltUurkhai$QueryToJson(
        OlborloltUurkhai$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

Uildver$Query$Paginate$DsUildver$DsSubUildverlel
    _$Uildver$Query$Paginate$DsUildver$DsSubUildverlelFromJson(
        Map<String, dynamic> json) {
  return Uildver$Query$Paginate$DsUildver$DsSubUildverlel()
    ..ajilchinToo = (json['ajilchin_too'] as num)?.toDouble()
    ..bHuchinChadal = (json['b_huchin_chadal'] as num)?.toDouble()
    ..bNoots = (json['b_noots'] as num)?.toDouble()
    ..bTorolId = json['b_torol_id'] as int
    ..buteegdehuun = json['buteegdehuun'] as String
    ..buteegdehuunId = json['buteegdehuun_id'] as int
    ..code = json['code'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..tezu = json['tezu'] as String
    ..torol = json['torol'] as String
    ..torolCode = json['torol_code'] as String
    ..uEhelsen = json['u_ehelsen'] as String
    ..uildverlelTolovId = json['uildverlel_tolov_id'] as int
    ..zurag = json['zurag'] as String;
}

Map<String, dynamic> _$Uildver$Query$Paginate$DsUildver$DsSubUildverlelToJson(
        Uildver$Query$Paginate$DsUildver$DsSubUildverlel instance) =>
    <String, dynamic>{
      'ajilchin_too': instance.ajilchinToo,
      'b_huchin_chadal': instance.bHuchinChadal,
      'b_noots': instance.bNoots,
      'b_torol_id': instance.bTorolId,
      'buteegdehuun': instance.buteegdehuun,
      'buteegdehuun_id': instance.buteegdehuunId,
      'code': instance.code,
      'id': instance.id,
      'table_id': instance.tableId,
      'tezu': instance.tezu,
      'torol': instance.torol,
      'torol_code': instance.torolCode,
      'u_ehelsen': instance.uEhelsen,
      'uildverlel_tolov_id': instance.uildverlelTolovId,
      'zurag': instance.zurag,
    };

Uildver$Query$Paginate$DsUildver _$Uildver$Query$Paginate$DsUildverFromJson(
    Map<String, dynamic> json) {
  return Uildver$Query$Paginate$DsUildver()
    ..aimagId = json['aimag_id'] as int
    ..aimagname = json['aimagname'] as String
    ..ajAhuiId = json['aj_ahui_id'] as int
    ..bagId = json['bag_id'] as int
    ..bagname = json['bagname'] as String
    ..id = json['id'] as int
    ..sumId = json['sum_id'] as int
    ..sumname = json['sumname'] as String
    ..uildverNer = json['uildver_ner'] as String
    ..dsSubUildverlel = (json['ds_sub_uildverlel'] as List)
        ?.map((e) => e == null
            ? null
            : Uildver$Query$Paginate$DsUildver$DsSubUildverlel.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Uildver$Query$Paginate$DsUildverToJson(
        Uildver$Query$Paginate$DsUildver instance) =>
    <String, dynamic>{
      'aimag_id': instance.aimagId,
      'aimagname': instance.aimagname,
      'aj_ahui_id': instance.ajAhuiId,
      'bag_id': instance.bagId,
      'bagname': instance.bagname,
      'id': instance.id,
      'sum_id': instance.sumId,
      'sumname': instance.sumname,
      'uildver_ner': instance.uildverNer,
      'ds_sub_uildverlel':
          instance.dsSubUildverlel?.map((e) => e?.toJson())?.toList(),
    };

Uildver$Query$Paginate _$Uildver$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return Uildver$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsUildver = (json['ds_uildver'] as List)
        ?.map((e) => e == null
            ? null
            : Uildver$Query$Paginate$DsUildver.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Uildver$Query$PaginateToJson(
        Uildver$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_uildver': instance.dsUildver?.map((e) => e?.toJson())?.toList(),
    };

Uildver$Query _$Uildver$QueryFromJson(Map<String, dynamic> json) {
  return Uildver$Query()
    ..paginate = json['paginate'] == null
        ? null
        : Uildver$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Uildver$QueryToJson(Uildver$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

OlborloltUurkhaiArguments _$OlborloltUurkhaiArgumentsFromJson(
    Map<String, dynamic> json) {
  return OlborloltUurkhaiArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$OlborloltUurkhaiArgumentsToJson(
        OlborloltUurkhaiArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

UildverArguments _$UildverArgumentsFromJson(Map<String, dynamic> json) {
  return UildverArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$UildverArgumentsToJson(UildverArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
