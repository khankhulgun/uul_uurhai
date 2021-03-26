// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tusulvvdiin_medeelel.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt
    _$PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborloltFromJson(
        Map<String, dynamic> json) {
  return PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt()
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
    _$PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborloltToJson(
            PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt
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

PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai
    _$PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhaiFromJson(
        Map<String, dynamic> json) {
  return PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai()
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
            : PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String,
    dynamic> _$PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhaiToJson(
        PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai instance) =>
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

PaginateolborloltUurhai$Query$Paginate
    _$PaginateolborloltUurhai$Query$PaginateFromJson(
        Map<String, dynamic> json) {
  return PaginateolborloltUurhai$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsOlborloltUurkhai = (json['ds_olborlolt_uurkhai'] as List)
        ?.map((e) => e == null
            ? null
            : PaginateolborloltUurhai$Query$Paginate$DsOlborloltUurkhai
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginateolborloltUurhai$Query$PaginateToJson(
        PaginateolborloltUurhai$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_olborlolt_uurkhai':
          instance.dsOlborloltUurkhai?.map((e) => e?.toJson())?.toList(),
    };

PaginateolborloltUurhai$Query _$PaginateolborloltUurhai$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginateolborloltUurhai$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginateolborloltUurhai$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginateolborloltUurhai$QueryToJson(
        PaginateolborloltUurhai$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

Paginateuildver$Query$Paginate$DsUildver$DsSubUildverlel
    _$Paginateuildver$Query$Paginate$DsUildver$DsSubUildverlelFromJson(
        Map<String, dynamic> json) {
  return Paginateuildver$Query$Paginate$DsUildver$DsSubUildverlel()
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

Map<String,
    dynamic> _$Paginateuildver$Query$Paginate$DsUildver$DsSubUildverlelToJson(
        Paginateuildver$Query$Paginate$DsUildver$DsSubUildverlel instance) =>
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

Paginateuildver$Query$Paginate$DsUildver
    _$Paginateuildver$Query$Paginate$DsUildverFromJson(
        Map<String, dynamic> json) {
  return Paginateuildver$Query$Paginate$DsUildver()
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
            : Paginateuildver$Query$Paginate$DsUildver$DsSubUildverlel.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Paginateuildver$Query$Paginate$DsUildverToJson(
        Paginateuildver$Query$Paginate$DsUildver instance) =>
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

Paginateuildver$Query$Paginate _$Paginateuildver$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return Paginateuildver$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsUildver = (json['ds_uildver'] as List)
        ?.map((e) => e == null
            ? null
            : Paginateuildver$Query$Paginate$DsUildver.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Paginateuildver$Query$PaginateToJson(
        Paginateuildver$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_uildver': instance.dsUildver?.map((e) => e?.toJson())?.toList(),
    };

Paginateuildver$Query _$Paginateuildver$QueryFromJson(
    Map<String, dynamic> json) {
  return Paginateuildver$Query()
    ..paginate = json['paginate'] == null
        ? null
        : Paginateuildver$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Paginateuildver$QueryToJson(
        Paginateuildver$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginateolborloltUurhaiArguments _$PaginateolborloltUurhaiArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginateolborloltUurhaiArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginateolborloltUurhaiArgumentsToJson(
        PaginateolborloltUurhaiArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginateuildverArguments _$PaginateuildverArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginateuildverArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginateuildverArgumentsToJson(
        PaginateuildverArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
