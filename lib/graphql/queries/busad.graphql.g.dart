// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'busad.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorol
    _$TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorolFromJson(
        Map<String, dynamic> json) {
  return TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorol()
    ..aTToo = (json['a_t_too'] as num)?.toDouble()
    ..aTZovshoorol = (json['a_t_zovshoorol'] as num)?.toDouble()
    ..ashiglatTzHuvi = (json['ashiglat_tz_huvi'] as num)?.toDouble()
    ..haiguulHuvi = (json['haiguul_huvi'] as num)?.toDouble()
    ..haiguulTZ = (json['haiguul_t_z'] as num)?.toDouble()
    ..htZovshoorol = (json['ht_zovshoorol'] as num)?.toDouble()
    ..id = json['id'] as int
    ..niitGazarHuvi = (json['niit_gazar_huvi'] as num)?.toDouble()
    ..objectId = json['object_id'] as int
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..tHemjeeSay = (json['t_hemjee_say'] as num)?.toDouble()
    ..tzToo = (json['tz_too'] as num)?.toDouble();
}

Map<String, dynamic> _$TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorolToJson(
        TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorol instance) =>
    <String, dynamic>{
      'a_t_too': instance.aTToo,
      'a_t_zovshoorol': instance.aTZovshoorol,
      'ashiglat_tz_huvi': instance.ashiglatTzHuvi,
      'haiguul_huvi': instance.haiguulHuvi,
      'haiguul_t_z': instance.haiguulTZ,
      'ht_zovshoorol': instance.htZovshoorol,
      'id': instance.id,
      'niit_gazar_huvi': instance.niitGazarHuvi,
      'object_id': instance.objectId,
      'ognoo': instance.ognoo?.toIso8601String(),
      't_hemjee_say': instance.tHemjeeSay,
      'tz_too': instance.tzToo,
    };

TusgaiZovshoorol$Query$Paginate _$TusgaiZovshoorol$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return TusgaiZovshoorol$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..aaTusgaiZovshoorol = (json['aa_tusgai_zovshoorol'] as List)
        ?.map((e) => e == null
            ? null
            : TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorol.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TusgaiZovshoorol$Query$PaginateToJson(
        TusgaiZovshoorol$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'aa_tusgai_zovshoorol':
          instance.aaTusgaiZovshoorol?.map((e) => e?.toJson())?.toList(),
    };

TusgaiZovshoorol$Query _$TusgaiZovshoorol$QueryFromJson(
    Map<String, dynamic> json) {
  return TusgaiZovshoorol$Query()
    ..paginate = json['paginate'] == null
        ? null
        : TusgaiZovshoorol$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TusgaiZovshoorol$QueryToJson(
        TusgaiZovshoorol$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt
    _$SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulaltFromJson(
        Map<String, dynamic> json) {
  return SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt()
    ..ajNegjToo = json['aj_negj_too'] as int
    ..id = json['id'] as int
    ..oTHemjee = (json['o_t_hemjee'] as num)?.toDouble()
    ..ognoo = json['ognoo'] as String
    ..sShDugaar = json['s_sh_dugaar'] as int
    ..tableId = json['table_id'] as int
    ..tovolruulsen = (json['tovolruulsen'] as num)?.toDouble()
    ..zTToo = json['z_t_too'] as int
    ..zaralsanTalbai = (json['zaralsan_talbai'] as num)?.toDouble();
}

Map<String, dynamic>
    _$SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulaltToJson(
            SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt
                instance) =>
        <String, dynamic>{
          'aj_negj_too': instance.ajNegjToo,
          'id': instance.id,
          'o_t_hemjee': instance.oTHemjee,
          'ognoo': instance.ognoo,
          's_sh_dugaar': instance.sShDugaar,
          'table_id': instance.tableId,
          'tovolruulsen': instance.tovolruulsen,
          'z_t_too': instance.zTToo,
          'zaralsan_talbai': instance.zaralsanTalbai,
        };

SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt
    _$SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulaltFromJson(
        Map<String, dynamic> json) {
  return SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt()
    ..id = json['id'] as int
    ..objectId = json['object_id'] as int
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..ologsonHegmjeeGa = (json['ologson_hegmjee_ga'] as num)?.toDouble()
    ..ologsonZToo = (json['ologson_z_too'] as num)?.toDouble()
    ..sShBagts = (json['s_sh_bagts'] as num)?.toDouble()
    ..sShHemjeeGa = (json['s_sh_hemjee_ga'] as num)?.toDouble()
    ..sShTalbai = (json['s_sh_talbai'] as num)?.toDouble()
    ..ulsTosovTerbum = (json['uls_tosov_terbum'] as num)?.toDouble()
    ..subSongonShalgaruulalt = (json['sub_songon_shalgaruulalt'] as List)
        ?.map((e) => e == null
            ? null
            : SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String,
    dynamic> _$SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulaltToJson(
        SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object_id': instance.objectId,
      'ognoo': instance.ognoo?.toIso8601String(),
      'ologson_hegmjee_ga': instance.ologsonHegmjeeGa,
      'ologson_z_too': instance.ologsonZToo,
      's_sh_bagts': instance.sShBagts,
      's_sh_hemjee_ga': instance.sShHemjeeGa,
      's_sh_talbai': instance.sShTalbai,
      'uls_tosov_terbum': instance.ulsTosovTerbum,
      'sub_songon_shalgaruulalt':
          instance.subSongonShalgaruulalt?.map((e) => e?.toJson())?.toList(),
    };

SongonShalgaruulalt$Query$Paginate _$SongonShalgaruulalt$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return SongonShalgaruulalt$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..aaSongonShalgaruulalt = (json['aa_songon_shalgaruulalt'] as List)
        ?.map((e) => e == null
            ? null
            : SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SongonShalgaruulalt$Query$PaginateToJson(
        SongonShalgaruulalt$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'aa_songon_shalgaruulalt':
          instance.aaSongonShalgaruulalt?.map((e) => e?.toJson())?.toList(),
    };

SongonShalgaruulalt$Query _$SongonShalgaruulalt$QueryFromJson(
    Map<String, dynamic> json) {
  return SongonShalgaruulalt$Query()
    ..paginate = json['paginate'] == null
        ? null
        : SongonShalgaruulalt$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SongonShalgaruulalt$QueryToJson(
        SongonShalgaruulalt$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubBu
    _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubBuFromJson(
        Map<String, dynamic> json) {
  return EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubBu()
    ..asuudal = json['asuudal'] as String
    ..asuudalD = json['asuudal_d'] as int
    ..bTorol = json['b_torol'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..tolov = json['tolov'] as String
    ..tolovId = json['tolov_id'] as int
    ..torolId = json['torol_id'] as int;
}

Map<String, dynamic>
    _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubBuToJson(
            EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubBu
                instance) =>
        <String, dynamic>{
          'asuudal': instance.asuudal,
          'asuudal_d': instance.asuudalD,
          'b_torol': instance.bTorol,
          'id': instance.id,
          'table_id': instance.tableId,
          'tolov': instance.tolov,
          'tolov_id': instance.tolovId,
          'torol_id': instance.torolId,
        };

EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubGt
    _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubGtFromJson(
        Map<String, dynamic> json) {
  return EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubGt()
    ..aDugaar = json['a_dugaar'] as int
    ..asuudal = json['asuudal'] as String
    ..gtTorol = json['gt_torol'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..tolov = json['tolov'] as String
    ..tolovId = json['tolov_id'] as int
    ..torolId = json['torol_id'] as int;
}

Map<String, dynamic>
    _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubGtToJson(
            EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubGt
                instance) =>
        <String, dynamic>{
          'a_dugaar': instance.aDugaar,
          'asuudal': instance.asuudal,
          'gt_torol': instance.gtTorol,
          'id': instance.id,
          'table_id': instance.tableId,
          'tolov': instance.tolov,
          'tolov_id': instance.tolovId,
          'torol_id': instance.torolId,
        };

EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubNoots
    _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubNootsFromJson(
        Map<String, dynamic> json) {
  return EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubNoots()
    ..aDugaar = json['a_dugaar'] as int
    ..asuudal = json['asuudal'] as String
    ..buteegdehuun = json['buteegdehuun'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..tolov = json['tolov'] as String
    ..tolovId = json['tolov_id'] as int
    ..torolId = json['torol_id'] as int;
}

Map<String, dynamic>
    _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubNootsToJson(
            EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubNoots
                instance) =>
        <String, dynamic>{
          'a_dugaar': instance.aDugaar,
          'asuudal': instance.asuudal,
          'buteegdehuun': instance.buteegdehuun,
          'id': instance.id,
          'table_id': instance.tableId,
          'tolov': instance.tolov,
          'tolov_id': instance.tolovId,
          'torol_id': instance.torolId,
        };

EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubTezu
    _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubTezuFromJson(
        Map<String, dynamic> json) {
  return EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubTezu()
    ..aDugaar = json['a_dugaar'] as int
    ..asuudal = json['asuudal'] as String
    ..buteegdehuun = json['buteegdehuun'] as String
    ..id = json['id'] as int
    ..subBTorolId = json['sub_b_torol_id'] as int
    ..tableId = json['table_id'] as int
    ..tolov = json['tolov'] as String
    ..tolovId = json['tolov_id'] as int;
}

Map<String, dynamic>
    _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubTezuToJson(
            EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubTezu
                instance) =>
        <String, dynamic>{
          'a_dugaar': instance.aDugaar,
          'asuudal': instance.asuudal,
          'buteegdehuun': instance.buteegdehuun,
          'id': instance.id,
          'sub_b_torol_id': instance.subBTorolId,
          'table_id': instance.tableId,
          'tolov': instance.tolov,
          'tolov_id': instance.tolovId,
        };

EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa
    _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsaFromJson(
        Map<String, dynamic> json) {
  return EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa()
    ..aDugaar = json['a_dugaar'] as int
    ..asuudal = json['asuudal'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..tolovId = json['tolov_id'] as int
    ..torol = json['torol'] as String
    ..torolId = json['torol_id'] as int
    ..uhggsaTolov = json['uhggsa_tolov'] as String;
}

Map<String, dynamic>
    _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsaToJson(
            EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa
                instance) =>
        <String, dynamic>{
          'a_dugaar': instance.aDugaar,
          'asuudal': instance.asuudal,
          'id': instance.id,
          'table_id': instance.tableId,
          'tolov_id': instance.tolovId,
          'torol': instance.torol,
          'torol_id': instance.torolId,
          'uhggsa_tolov': instance.uhggsaTolov,
        };

EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol
    _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlolFromJson(
        Map<String, dynamic> json) {
  return EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol()
    ..ebmzSalbarId = json['ebmz_salbar_id'] as int
    ..hhAsuudalToo = json['hh_asuudal_too'] as int
    ..id = json['id'] as int
    ..jilId = json['jil_id'] as int
    ..zovlol = json['zovlol'] as String
    ..dsSubBu = (json['ds_sub_bu'] as List)
        ?.map((e) => e == null
            ? null
            : EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubBu
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..dsSubGt = (json['ds_sub_gt'] as List)
        ?.map((e) => e == null
            ? null
            : EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubGt
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..dsSubNoots = (json['ds_sub_noots'] as List)
        ?.map((e) => e == null
            ? null
            : EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubNoots
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..dsSubTezu = (json['ds_sub_tezu'] as List)
        ?.map((e) => e == null ? null : EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubTezu.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..dsSubUhggsa = (json['ds_sub_uhggsa'] as List)?.map((e) => e == null ? null : EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa.fromJson(e as Map<String, dynamic>))?.toList();
}

Map<String, dynamic>
    _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlolToJson(
            EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol instance) =>
        <String, dynamic>{
          'ebmz_salbar_id': instance.ebmzSalbarId,
          'hh_asuudal_too': instance.hhAsuudalToo,
          'id': instance.id,
          'jil_id': instance.jilId,
          'zovlol': instance.zovlol,
          'ds_sub_bu': instance.dsSubBu?.map((e) => e?.toJson())?.toList(),
          'ds_sub_gt': instance.dsSubGt?.map((e) => e?.toJson())?.toList(),
          'ds_sub_noots':
              instance.dsSubNoots?.map((e) => e?.toJson())?.toList(),
          'ds_sub_tezu': instance.dsSubTezu?.map((e) => e?.toJson())?.toList(),
          'ds_sub_uhggsa':
              instance.dsSubUhggsa?.map((e) => e?.toJson())?.toList(),
        };

EBMergejilZovlolAll$Query$Paginate _$EBMergejilZovlolAll$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return EBMergejilZovlolAll$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsEBMergejilZovlol = (json['ds_e_b_mergejil_zovlol'] as List)
        ?.map((e) => e == null
            ? null
            : EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$EBMergejilZovlolAll$Query$PaginateToJson(
        EBMergejilZovlolAll$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_e_b_mergejil_zovlol':
          instance.dsEBMergejilZovlol?.map((e) => e?.toJson())?.toList(),
    };

EBMergejilZovlolAll$Query _$EBMergejilZovlolAll$QueryFromJson(
    Map<String, dynamic> json) {
  return EBMergejilZovlolAll$Query()
    ..paginate = json['paginate'] == null
        ? null
        : EBMergejilZovlolAll$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$EBMergejilZovlolAll$QueryToJson(
        EBMergejilZovlolAll$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubBu
    _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubBuFromJson(
        Map<String, dynamic> json) {
  return EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubBu()
    ..asuudal = json['asuudal'] as String
    ..asuudalD = json['asuudal_d'] as int
    ..bTorol = json['b_torol'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..tolov = json['tolov'] as String
    ..tolovId = json['tolov_id'] as int
    ..torolId = json['torol_id'] as int;
}

Map<String,
    dynamic> _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubBuToJson(
        EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubBu instance) =>
    <String, dynamic>{
      'asuudal': instance.asuudal,
      'asuudal_d': instance.asuudalD,
      'b_torol': instance.bTorol,
      'id': instance.id,
      'table_id': instance.tableId,
      'tolov': instance.tolov,
      'tolov_id': instance.tolovId,
      'torol_id': instance.torolId,
    };

EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubGt
    _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubGtFromJson(
        Map<String, dynamic> json) {
  return EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubGt()
    ..aDugaar = json['a_dugaar'] as int
    ..asuudal = json['asuudal'] as String
    ..gtTorol = json['gt_torol'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..tolov = json['tolov'] as String
    ..tolovId = json['tolov_id'] as int
    ..torolId = json['torol_id'] as int;
}

Map<String,
    dynamic> _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubGtToJson(
        EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubGt instance) =>
    <String, dynamic>{
      'a_dugaar': instance.aDugaar,
      'asuudal': instance.asuudal,
      'gt_torol': instance.gtTorol,
      'id': instance.id,
      'table_id': instance.tableId,
      'tolov': instance.tolov,
      'tolov_id': instance.tolovId,
      'torol_id': instance.torolId,
    };

EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubNoots
    _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubNootsFromJson(
        Map<String, dynamic> json) {
  return EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubNoots()
    ..aDugaar = json['a_dugaar'] as int
    ..asuudal = json['asuudal'] as String
    ..buteegdehuun = json['buteegdehuun'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..tolov = json['tolov'] as String
    ..tolovId = json['tolov_id'] as int
    ..torolId = json['torol_id'] as int;
}

Map<String, dynamic>
    _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubNootsToJson(
            EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubNoots
                instance) =>
        <String, dynamic>{
          'a_dugaar': instance.aDugaar,
          'asuudal': instance.asuudal,
          'buteegdehuun': instance.buteegdehuun,
          'id': instance.id,
          'table_id': instance.tableId,
          'tolov': instance.tolov,
          'tolov_id': instance.tolovId,
          'torol_id': instance.torolId,
        };

EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubTezu
    _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubTezuFromJson(
        Map<String, dynamic> json) {
  return EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubTezu()
    ..aDugaar = json['a_dugaar'] as int
    ..asuudal = json['asuudal'] as String
    ..buteegdehuun = json['buteegdehuun'] as String
    ..id = json['id'] as int
    ..subBTorolId = json['sub_b_torol_id'] as int
    ..tableId = json['table_id'] as int
    ..tolov = json['tolov'] as String
    ..tolovId = json['tolov_id'] as int;
}

Map<String, dynamic>
    _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubTezuToJson(
            EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubTezu
                instance) =>
        <String, dynamic>{
          'a_dugaar': instance.aDugaar,
          'asuudal': instance.asuudal,
          'buteegdehuun': instance.buteegdehuun,
          'id': instance.id,
          'sub_b_torol_id': instance.subBTorolId,
          'table_id': instance.tableId,
          'tolov': instance.tolov,
          'tolov_id': instance.tolovId,
        };

EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa
    _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsaFromJson(
        Map<String, dynamic> json) {
  return EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa()
    ..aDugaar = json['a_dugaar'] as int
    ..asuudal = json['asuudal'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..tolovId = json['tolov_id'] as int
    ..torol = json['torol'] as String
    ..torolId = json['torol_id'] as int
    ..uhggsaTolov = json['uhggsa_tolov'] as String;
}

Map<String, dynamic>
    _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsaToJson(
            EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa
                instance) =>
        <String, dynamic>{
          'a_dugaar': instance.aDugaar,
          'asuudal': instance.asuudal,
          'id': instance.id,
          'table_id': instance.tableId,
          'tolov_id': instance.tolovId,
          'torol': instance.torol,
          'torol_id': instance.torolId,
          'uhggsa_tolov': instance.uhggsaTolov,
        };

EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol
    _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlolFromJson(
        Map<String, dynamic> json) {
  return EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol()
    ..ebmzSalbarId = json['ebmz_salbar_id'] as int
    ..hhAsuudalToo = json['hh_asuudal_too'] as int
    ..id = json['id'] as int
    ..jilId = json['jil_id'] as int
    ..zovlol = json['zovlol'] as String
    ..huraldaanDugaar = json['huraldaan_dugaar'] as int
    ..dsSubBu = (json['ds_sub_bu'] as List)
        ?.map((e) => e == null
            ? null
            : EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubBu.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..dsSubGt = (json['ds_sub_gt'] as List)
        ?.map((e) => e == null
            ? null
            : EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubGt.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..dsSubNoots = (json['ds_sub_noots'] as List)
        ?.map((e) => e == null
            ? null
            : EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubNoots.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..dsSubTezu = (json['ds_sub_tezu'] as List)
        ?.map((e) => e == null
            ? null
            : EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubTezu.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..dsSubUhggsa = (json['ds_sub_uhggsa'] as List)?.map((e) => e == null ? null : EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa.fromJson(e as Map<String, dynamic>))?.toList();
}

Map<String, dynamic> _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlolToJson(
        EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol instance) =>
    <String, dynamic>{
      'ebmz_salbar_id': instance.ebmzSalbarId,
      'hh_asuudal_too': instance.hhAsuudalToo,
      'id': instance.id,
      'jil_id': instance.jilId,
      'zovlol': instance.zovlol,
      'huraldaan_dugaar': instance.huraldaanDugaar,
      'ds_sub_bu': instance.dsSubBu?.map((e) => e?.toJson())?.toList(),
      'ds_sub_gt': instance.dsSubGt?.map((e) => e?.toJson())?.toList(),
      'ds_sub_noots': instance.dsSubNoots?.map((e) => e?.toJson())?.toList(),
      'ds_sub_tezu': instance.dsSubTezu?.map((e) => e?.toJson())?.toList(),
      'ds_sub_uhggsa': instance.dsSubUhggsa?.map((e) => e?.toJson())?.toList(),
    };

EBMergejilZovlol$Query$Paginate _$EBMergejilZovlol$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return EBMergejilZovlol$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsEBMergejilZovlol = (json['ds_e_b_mergejil_zovlol'] as List)
        ?.map((e) => e == null
            ? null
            : EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$EBMergejilZovlol$Query$PaginateToJson(
        EBMergejilZovlol$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_e_b_mergejil_zovlol':
          instance.dsEBMergejilZovlol?.map((e) => e?.toJson())?.toList(),
    };

EBMergejilZovlol$Query _$EBMergejilZovlol$QueryFromJson(
    Map<String, dynamic> json) {
  return EBMergejilZovlol$Query()
    ..paginate = json['paginate'] == null
        ? null
        : EBMergejilZovlol$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$EBMergejilZovlol$QueryToJson(
        EBMergejilZovlol$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel
    _$AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelelFromJson(
        Map<String, dynamic> json) {
  return AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel()
    ..ajAhuiNerId = json['aj_ahui_ner_id'] as String
    ..chiglel = json['chiglel'] as String
    ..huchToo = json['huch_too'] as int
    ..jil = json['jil'] as String
    ..jilId = json['jil_id'] as int
    ..id = json['id'] as int
    ..medeelel = json['medeelel'] as String
    ..uls = json['uls'] as String
    ..ulsId = json['uls_id'] as int;
}

Map<String, dynamic>
    _$AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelelToJson(
            AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel instance) =>
        <String, dynamic>{
          'aj_ahui_ner_id': instance.ajAhuiNerId,
          'chiglel': instance.chiglel,
          'huch_too': instance.huchToo,
          'jil': instance.jil,
          'jil_id': instance.jilId,
          'id': instance.id,
          'medeelel': instance.medeelel,
          'uls': instance.uls,
          'uls_id': instance.ulsId,
        };

AjilahHuchMedeelel$Query$Paginate _$AjilahHuchMedeelel$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return AjilahHuchMedeelel$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsAjilahHuchMedeelel = (json['ds_ajilah_huch_medeelel'] as List)
        ?.map((e) => e == null
            ? null
            : AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AjilahHuchMedeelel$Query$PaginateToJson(
        AjilahHuchMedeelel$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_ajilah_huch_medeelel':
          instance.dsAjilahHuchMedeelel?.map((e) => e?.toJson())?.toList(),
    };

AjilahHuchMedeelel$Query _$AjilahHuchMedeelel$QueryFromJson(
    Map<String, dynamic> json) {
  return AjilahHuchMedeelel$Query()
    ..paginate = json['paginate'] == null
        ? null
        : AjilahHuchMedeelel$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AjilahHuchMedeelel$QueryToJson(
        AjilahHuchMedeelel$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrengui
    _$SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrenguiFromJson(
        Map<String, dynamic> json) {
  return SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrengui()
    ..aNiislel = (json['a_niislel'] as num)?.toDouble()
    ..bosgoUne = (json['bosgo_une'] as num)?.toDouble()
    ..id = json['id'] as int
    ..objectId = json['object_id'] as int
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..sShCode = (json['s_sh_code'] as num)?.toDouble()
    ..sumDuureg = (json['sum_duureg'] as num)?.toDouble()
    ..talbainDugaar = (json['talbain_dugaar'] as num)?.toDouble()
    ..talbainHemjee = (json['talbain_hemjee'] as num)?.toDouble();
}

Map<String, dynamic>
    _$SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrenguiToJson(
            SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrengui
                instance) =>
        <String, dynamic>{
          'a_niislel': instance.aNiislel,
          'bosgo_une': instance.bosgoUne,
          'id': instance.id,
          'object_id': instance.objectId,
          'ognoo': instance.ognoo?.toIso8601String(),
          's_sh_code': instance.sShCode,
          'sum_duureg': instance.sumDuureg,
          'talbain_dugaar': instance.talbainDugaar,
          'talbain_hemjee': instance.talbainHemjee,
        };

SongonShalagruulaltDelegrengui$Query$Paginate
    _$SongonShalagruulaltDelegrengui$Query$PaginateFromJson(
        Map<String, dynamic> json) {
  return SongonShalagruulaltDelegrengui$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..aaSongonShalagruulaltDelegrengui = (json[
            'aa_songon_shalagruulalt_delegrengui'] as List)
        ?.map((e) => e == null
            ? null
            : SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrengui
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SongonShalagruulaltDelegrengui$Query$PaginateToJson(
        SongonShalagruulaltDelegrengui$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'aa_songon_shalagruulalt_delegrengui': instance
          .aaSongonShalagruulaltDelegrengui
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

SongonShalagruulaltDelegrengui$Query
    _$SongonShalagruulaltDelegrengui$QueryFromJson(Map<String, dynamic> json) {
  return SongonShalagruulaltDelegrengui$Query()
    ..paginate = json['paginate'] == null
        ? null
        : SongonShalagruulaltDelegrengui$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SongonShalagruulaltDelegrengui$QueryToJson(
        SongonShalagruulaltDelegrengui$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

LutEbmZovlol$Query$LutEbmZovlol _$LutEbmZovlol$Query$LutEbmZovlolFromJson(
    Map<String, dynamic> json) {
  return LutEbmZovlol$Query$LutEbmZovlol()
    ..id = json['id'] as int
    ..zovlol = json['zovlol'] as String;
}

Map<String, dynamic> _$LutEbmZovlol$Query$LutEbmZovlolToJson(
        LutEbmZovlol$Query$LutEbmZovlol instance) =>
    <String, dynamic>{
      'id': instance.id,
      'zovlol': instance.zovlol,
    };

LutEbmZovlol$Query _$LutEbmZovlol$QueryFromJson(Map<String, dynamic> json) {
  return LutEbmZovlol$Query()
    ..lutEbmZovlol = (json['lut_ebm_zovlol'] as List)
        ?.map((e) => e == null
            ? null
            : LutEbmZovlol$Query$LutEbmZovlol.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LutEbmZovlol$QueryToJson(LutEbmZovlol$Query instance) =>
    <String, dynamic>{
      'lut_ebm_zovlol':
          instance.lutEbmZovlol?.map((e) => e?.toJson())?.toList(),
    };

LutJil$Query$LutJil _$LutJil$Query$LutJilFromJson(Map<String, dynamic> json) {
  return LutJil$Query$LutJil()
    ..id = json['id'] as int
    ..jil = json['jil'] as String;
}

Map<String, dynamic> _$LutJil$Query$LutJilToJson(
        LutJil$Query$LutJil instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jil': instance.jil,
    };

LutJil$Query _$LutJil$QueryFromJson(Map<String, dynamic> json) {
  return LutJil$Query()
    ..lutJil = (json['lut_jil'] as List)
        ?.map((e) => e == null
            ? null
            : LutJil$Query$LutJil.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LutJil$QueryToJson(LutJil$Query instance) =>
    <String, dynamic>{
      'lut_jil': instance.lutJil?.map((e) => e?.toJson())?.toList(),
    };

LutUls$Query$LutUls _$LutUls$Query$LutUlsFromJson(Map<String, dynamic> json) {
  return LutUls$Query$LutUls()
    ..id = json['id'] as int
    ..uls = json['uls'] as String;
}

Map<String, dynamic> _$LutUls$Query$LutUlsToJson(
        LutUls$Query$LutUls instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uls': instance.uls,
    };

LutUls$Query _$LutUls$QueryFromJson(Map<String, dynamic> json) {
  return LutUls$Query()
    ..lutUls = (json['lut_uls'] as List)
        ?.map((e) => e == null
            ? null
            : LutUls$Query$LutUls.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LutUls$QueryToJson(LutUls$Query instance) =>
    <String, dynamic>{
      'lut_uls': instance.lutUls?.map((e) => e?.toJson())?.toList(),
    };

HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaar
    _$HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaarFromJson(
        Map<String, dynamic> json) {
  return HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaar()
    ..huraldaanDugaar = json['huraldaan_dugaar'] as int
    ..id = json['id'] as int;
}

Map<String, dynamic>
    _$HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaarToJson(
            HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaar instance) =>
        <String, dynamic>{
          'huraldaan_dugaar': instance.huraldaanDugaar,
          'id': instance.id,
        };

HuraldaanDugaar$Query _$HuraldaanDugaar$QueryFromJson(
    Map<String, dynamic> json) {
  return HuraldaanDugaar$Query()
    ..dsViewEBMergejilHuraldaanDugaar =
        (json['ds_view_e_b_mergejil_huraldaan_dugaar'] as List)
            ?.map((e) => e == null
                ? null
                : HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaar
                    .fromJson(e as Map<String, dynamic>))
            ?.toList();
}

Map<String, dynamic> _$HuraldaanDugaar$QueryToJson(
        HuraldaanDugaar$Query instance) =>
    <String, dynamic>{
      'ds_view_e_b_mergejil_huraldaan_dugaar': instance
          .dsViewEBMergejilHuraldaanDugaar
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

TusgaiZovshoorolArguments _$TusgaiZovshoorolArgumentsFromJson(
    Map<String, dynamic> json) {
  return TusgaiZovshoorolArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$TusgaiZovshoorolArgumentsToJson(
        TusgaiZovshoorolArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

SongonShalgaruulaltArguments _$SongonShalgaruulaltArgumentsFromJson(
    Map<String, dynamic> json) {
  return SongonShalgaruulaltArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$SongonShalgaruulaltArgumentsToJson(
        SongonShalgaruulaltArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

EBMergejilZovlolAllArguments _$EBMergejilZovlolAllArgumentsFromJson(
    Map<String, dynamic> json) {
  return EBMergejilZovlolAllArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$EBMergejilZovlolAllArgumentsToJson(
        EBMergejilZovlolAllArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

EBMergejilZovlolArguments _$EBMergejilZovlolArgumentsFromJson(
    Map<String, dynamic> json) {
  return EBMergejilZovlolArguments(
    page: json['page'] as int,
    size: json['size'] as int,
    turul_id: json['turul_id'] as String,
    aanDugaar: json['aanDugaar'] as String,
    jil_id: json['jil_id'] as String,
  );
}

Map<String, dynamic> _$EBMergejilZovlolArgumentsToJson(
        EBMergejilZovlolArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'turul_id': instance.turul_id,
      'aanDugaar': instance.aanDugaar,
      'jil_id': instance.jil_id,
    };

AjilahHuchMedeelelArguments _$AjilahHuchMedeelelArgumentsFromJson(
    Map<String, dynamic> json) {
  return AjilahHuchMedeelelArguments(
    page: json['page'] as int,
    size: json['size'] as int,
    uls_id: json['uls_id'] as String,
    aanName: json['aanName'] as String,
    jil_id: json['jil_id'] as String,
  );
}

Map<String, dynamic> _$AjilahHuchMedeelelArgumentsToJson(
        AjilahHuchMedeelelArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'uls_id': instance.uls_id,
      'aanName': instance.aanName,
      'jil_id': instance.jil_id,
    };

SongonShalagruulaltDelegrenguiArguments
    _$SongonShalagruulaltDelegrenguiArgumentsFromJson(
        Map<String, dynamic> json) {
  return SongonShalagruulaltDelegrenguiArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$SongonShalagruulaltDelegrenguiArgumentsToJson(
        SongonShalagruulaltDelegrenguiArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
