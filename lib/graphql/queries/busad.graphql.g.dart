// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'busad.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatetusgaiZuvshuurul$Query$Paginate$AaTusgaiZovshoorol
    _$PaginatetusgaiZuvshuurul$Query$Paginate$AaTusgaiZovshoorolFromJson(
        Map<String, dynamic> json) {
  return PaginatetusgaiZuvshuurul$Query$Paginate$AaTusgaiZovshoorol()
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

Map<String,
    dynamic> _$PaginatetusgaiZuvshuurul$Query$Paginate$AaTusgaiZovshoorolToJson(
        PaginatetusgaiZuvshuurul$Query$Paginate$AaTusgaiZovshoorol instance) =>
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

PaginatetusgaiZuvshuurul$Query$Paginate
    _$PaginatetusgaiZuvshuurul$Query$PaginateFromJson(
        Map<String, dynamic> json) {
  return PaginatetusgaiZuvshuurul$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..aaTusgaiZovshoorol = (json['aa_tusgai_zovshoorol'] as List)
        ?.map((e) => e == null
            ? null
            : PaginatetusgaiZuvshuurul$Query$Paginate$AaTusgaiZovshoorol
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginatetusgaiZuvshuurul$Query$PaginateToJson(
        PaginatetusgaiZuvshuurul$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'aa_tusgai_zovshoorol':
          instance.aaTusgaiZovshoorol?.map((e) => e?.toJson())?.toList(),
    };

PaginatetusgaiZuvshuurul$Query _$PaginatetusgaiZuvshuurul$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginatetusgaiZuvshuurul$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginatetusgaiZuvshuurul$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginatetusgaiZuvshuurul$QueryToJson(
        PaginatetusgaiZuvshuurul$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt
    _$PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulaltFromJson(
        Map<String, dynamic> json) {
  return PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt()
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
    _$PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulaltToJson(
            PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt
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

PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt
    _$PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulaltFromJson(
        Map<String, dynamic> json) {
  return PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt()
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
            : PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic>
    _$PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulaltToJson(
            PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt
                instance) =>
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
          'sub_songon_shalgaruulalt': instance.subSongonShalgaruulalt
              ?.map((e) => e?.toJson())
              ?.toList(),
        };

PaginatesongonShalgaruulalt$Query$Paginate
    _$PaginatesongonShalgaruulalt$Query$PaginateFromJson(
        Map<String, dynamic> json) {
  return PaginatesongonShalgaruulalt$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..aaSongonShalgaruulalt = (json['aa_songon_shalgaruulalt'] as List)
        ?.map((e) => e == null
            ? null
            : PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginatesongonShalgaruulalt$Query$PaginateToJson(
        PaginatesongonShalgaruulalt$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'aa_songon_shalgaruulalt':
          instance.aaSongonShalgaruulalt?.map((e) => e?.toJson())?.toList(),
    };

PaginatesongonShalgaruulalt$Query _$PaginatesongonShalgaruulalt$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginatesongonShalgaruulalt$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginatesongonShalgaruulalt$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginatesongonShalgaruulalt$QueryToJson(
        PaginatesongonShalgaruulalt$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBu
    _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBuFromJson(
        Map<String, dynamic> json) {
  return PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBu()
    ..asuudal = json['asuudal'] as String
    ..asuudalD = json['asuudal_d'] as int
    ..bTorol = json['b_torol'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..tolov = json['tolov'] as String
    ..tolovId = json['tolov_id'] as int;
}

Map<String, dynamic>
    _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBuToJson(
            PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBu
                instance) =>
        <String, dynamic>{
          'asuudal': instance.asuudal,
          'asuudal_d': instance.asuudalD,
          'b_torol': instance.bTorol,
          'id': instance.id,
          'table_id': instance.tableId,
          'tolov': instance.tolov,
          'tolov_id': instance.tolovId,
        };

PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGt
    _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGtFromJson(
        Map<String, dynamic> json) {
  return PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGt()
    ..aDugaar = json['a_dugaar'] as int
    ..asuudal = json['asuudal'] as String
    ..gtTorol = json['gt_torol'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..tolov = json['tolov'] as String
    ..tolovId = json['tolov_id'] as int;
}

Map<String, dynamic>
    _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGtToJson(
            PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGt
                instance) =>
        <String, dynamic>{
          'a_dugaar': instance.aDugaar,
          'asuudal': instance.asuudal,
          'gt_torol': instance.gtTorol,
          'id': instance.id,
          'table_id': instance.tableId,
          'tolov': instance.tolov,
          'tolov_id': instance.tolovId,
        };

PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNoots
    _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNootsFromJson(
        Map<String, dynamic> json) {
  return PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNoots()
    ..aDugaar = json['a_dugaar'] as int
    ..asuudal = json['asuudal'] as String
    ..buteegdehuun = json['buteegdehuun'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..tolov = json['tolov'] as String
    ..tolovId = json['tolov_id'] as int;
}

Map<String, dynamic>
    _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNootsToJson(
            PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNoots
                instance) =>
        <String, dynamic>{
          'a_dugaar': instance.aDugaar,
          'asuudal': instance.asuudal,
          'buteegdehuun': instance.buteegdehuun,
          'id': instance.id,
          'table_id': instance.tableId,
          'tolov': instance.tolov,
          'tolov_id': instance.tolovId,
        };

PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezu
    _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezuFromJson(
        Map<String, dynamic> json) {
  return PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezu()
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
    _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezuToJson(
            PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezu
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

PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsa
    _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsaFromJson(
        Map<String, dynamic> json) {
  return PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsa()
    ..aDugaar = json['a_dugaar'] as int
    ..asuudal = json['asuudal'] as String
    ..id = json['id'] as int
    ..tableId = json['table_id'] as int
    ..torol = json['torol'] as String
    ..tolovId = json['tolov_id'] as int
    ..uhggsaTolov = json['uhggsa_tolov'] as String;
}

Map<String, dynamic>
    _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsaToJson(
            PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsa
                instance) =>
        <String, dynamic>{
          'a_dugaar': instance.aDugaar,
          'asuudal': instance.asuudal,
          'id': instance.id,
          'table_id': instance.tableId,
          'torol': instance.torol,
          'tolov_id': instance.tolovId,
          'uhggsa_tolov': instance.uhggsaTolov,
        };

PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol
    _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlolFromJson(
        Map<String, dynamic> json) {
  return PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol()
    ..ebmzSalbarId = json['ebmz_salbar_id'] as int
    ..hhAsuudalToo = json['hh_asuudal_too'] as int
    ..id = json['id'] as int
    ..jilId = json['jil_id'] as int
    ..dsSubBu = (json['ds_sub_bu'] as List)
        ?.map((e) => e == null
            ? null
            : PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBu
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..dsSubGt = (json['ds_sub_gt'] as List)
        ?.map((e) => e == null
            ? null
            : PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGt
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..dsSubNoots = (json['ds_sub_noots'] as List)
        ?.map((e) => e == null
            ? null
            : PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNoots
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..dsSubTezu = (json['ds_sub_tezu'] as List)
        ?.map((e) => e == null ? null : PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezu.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..dsSubUhggsa = (json['ds_sub_uhggsa'] as List)?.map((e) => e == null ? null : PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsa.fromJson(e as Map<String, dynamic>))?.toList();
}

Map<String,
    dynamic> _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlolToJson(
        PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol instance) =>
    <String, dynamic>{
      'ebmz_salbar_id': instance.ebmzSalbarId,
      'hh_asuudal_too': instance.hhAsuudalToo,
      'id': instance.id,
      'jil_id': instance.jilId,
      'ds_sub_bu': instance.dsSubBu?.map((e) => e?.toJson())?.toList(),
      'ds_sub_gt': instance.dsSubGt?.map((e) => e?.toJson())?.toList(),
      'ds_sub_noots': instance.dsSubNoots?.map((e) => e?.toJson())?.toList(),
      'ds_sub_tezu': instance.dsSubTezu?.map((e) => e?.toJson())?.toList(),
      'ds_sub_uhggsa': instance.dsSubUhggsa?.map((e) => e?.toJson())?.toList(),
    };

PaginateebMergejilZovlol$Query$Paginate
    _$PaginateebMergejilZovlol$Query$PaginateFromJson(
        Map<String, dynamic> json) {
  return PaginateebMergejilZovlol$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..aaEBMergejilZovlol = (json['aa_e_b_mergejil_zovlol'] as List)
        ?.map((e) => e == null
            ? null
            : PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginateebMergejilZovlol$Query$PaginateToJson(
        PaginateebMergejilZovlol$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'aa_e_b_mergejil_zovlol':
          instance.aaEBMergejilZovlol?.map((e) => e?.toJson())?.toList(),
    };

PaginateebMergejilZovlol$Query _$PaginateebMergejilZovlol$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginateebMergejilZovlol$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginateebMergejilZovlol$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginateebMergejilZovlol$QueryToJson(
        PaginateebMergejilZovlol$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginateajilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel
    _$PaginateajilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelelFromJson(
        Map<String, dynamic> json) {
  return PaginateajilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel()
    ..ajAhuiNerId = json['aj_ahui_ner_id'] as String
    ..bTorol = json['b_torol'] as String
    ..huchToo = json['huch_too'] as int
    ..id = json['id'] as int
    ..medeelel = json['medeelel'] as String
    ..uaChiglelId = json['ua_chiglel_id'] as int
    ..uls = json['uls'] as String
    ..ulsId = json['uls_id'] as int;
}

Map<String, dynamic>
    _$PaginateajilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelelToJson(
            PaginateajilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel
                instance) =>
        <String, dynamic>{
          'aj_ahui_ner_id': instance.ajAhuiNerId,
          'b_torol': instance.bTorol,
          'huch_too': instance.huchToo,
          'id': instance.id,
          'medeelel': instance.medeelel,
          'ua_chiglel_id': instance.uaChiglelId,
          'uls': instance.uls,
          'uls_id': instance.ulsId,
        };

PaginateajilahHuchMedeelel$Query$Paginate
    _$PaginateajilahHuchMedeelel$Query$PaginateFromJson(
        Map<String, dynamic> json) {
  return PaginateajilahHuchMedeelel$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsAjilahHuchMedeelel = (json['ds_ajilah_huch_medeelel'] as List)
        ?.map((e) => e == null
            ? null
            : PaginateajilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginateajilahHuchMedeelel$Query$PaginateToJson(
        PaginateajilahHuchMedeelel$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_ajilah_huch_medeelel':
          instance.dsAjilahHuchMedeelel?.map((e) => e?.toJson())?.toList(),
    };

PaginateajilahHuchMedeelel$Query _$PaginateajilahHuchMedeelel$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginateajilahHuchMedeelel$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginateajilahHuchMedeelel$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginateajilahHuchMedeelel$QueryToJson(
        PaginateajilahHuchMedeelel$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginatetusgaiZuvshuurulArguments _$PaginatetusgaiZuvshuurulArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginatetusgaiZuvshuurulArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginatetusgaiZuvshuurulArgumentsToJson(
        PaginatetusgaiZuvshuurulArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginatesongonShalgaruulaltArguments
    _$PaginatesongonShalgaruulaltArgumentsFromJson(Map<String, dynamic> json) {
  return PaginatesongonShalgaruulaltArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginatesongonShalgaruulaltArgumentsToJson(
        PaginatesongonShalgaruulaltArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginateebMergejilZovlolArguments _$PaginateebMergejilZovlolArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginateebMergejilZovlolArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginateebMergejilZovlolArgumentsToJson(
        PaginateebMergejilZovlolArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginateajilahHuchMedeelelArguments
    _$PaginateajilahHuchMedeelelArgumentsFromJson(Map<String, dynamic> json) {
  return PaginateajilahHuchMedeelelArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginateajilahHuchMedeelelArgumentsToJson(
        PaginateajilahHuchMedeelelArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
