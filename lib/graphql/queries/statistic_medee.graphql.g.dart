// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic_medee.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginateduremJuram$Query$Paginate$DsExportMedee
    _$PaginateduremJuram$Query$Paginate$DsExportMedeeFromJson(
        Map<String, dynamic> json) {
  return PaginateduremJuram$Query$Paginate$DsExportMedee()
    ..aHeregsel = json['a_heregsel'] as String
    ..bId = json['b_id'] as int
    ..bTorolId = json['b_torol_id'] as int
    ..boomt = json['boomt'] as String
    ..boomtId = json['boomt_id'] as int
    ..buteegdehuun = json['buteegdehuun'] as String
    ..code = json['code'] as String
    ..ehSurvaljId = json['eh_survalj_id'] as int
    ..expUneDun = (json['exp_une_dun'] as num)?.toDouble()
    ..exportBaiguullaga = json['export_baiguullaga'] as String
    ..exportHemjee = (json['export_hemjee'] as num)?.toDouble()
    ..hemjihNegjId = json['hemjih_negj_id'] as int
    ..id = json['id'] as int
    ..negj = json['negj'] as String
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..survalj = json['survalj'] as String
    ..tHeregselId = json['t_heregsel_id'] as int
    ..teeverToo = json['teever_too'] as int
    ..uls = json['uls'] as String
    ..ulsId = json['uls_id'] as int;
}

Map<String, dynamic> _$PaginateduremJuram$Query$Paginate$DsExportMedeeToJson(
        PaginateduremJuram$Query$Paginate$DsExportMedee instance) =>
    <String, dynamic>{
      'a_heregsel': instance.aHeregsel,
      'b_id': instance.bId,
      'b_torol_id': instance.bTorolId,
      'boomt': instance.boomt,
      'boomt_id': instance.boomtId,
      'buteegdehuun': instance.buteegdehuun,
      'code': instance.code,
      'eh_survalj_id': instance.ehSurvaljId,
      'exp_une_dun': instance.expUneDun,
      'export_baiguullaga': instance.exportBaiguullaga,
      'export_hemjee': instance.exportHemjee,
      'hemjih_negj_id': instance.hemjihNegjId,
      'id': instance.id,
      'negj': instance.negj,
      'ognoo': instance.ognoo?.toIso8601String(),
      'survalj': instance.survalj,
      't_heregsel_id': instance.tHeregselId,
      'teever_too': instance.teeverToo,
      'uls': instance.uls,
      'uls_id': instance.ulsId,
    };

PaginateduremJuram$Query$Paginate _$PaginateduremJuram$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return PaginateduremJuram$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsExportMedee = (json['ds_export_medee'] as List)
        ?.map((e) => e == null
            ? null
            : PaginateduremJuram$Query$Paginate$DsExportMedee.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginateduremJuram$Query$PaginateToJson(
        PaginateduremJuram$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_export_medee':
          instance.dsExportMedee?.map((e) => e?.toJson())?.toList(),
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

PaginateolborloltMedee$Query$Paginate$DsOlborloltMedee
    _$PaginateolborloltMedee$Query$Paginate$DsOlborloltMedeeFromJson(
        Map<String, dynamic> json) {
  return PaginateolborloltMedee$Query$Paginate$DsOlborloltMedee()
    ..bId = json['b_id'] as int
    ..bTorolId = json['b_torol_id'] as int
    ..buteegdehuun = json['buteegdehuun'] as String
    ..ehSurvaljId = json['eh_survalj_id'] as int
    ..hemjihNegjId = json['hemjih_negj_id'] as int
    ..id = json['id'] as int
    ..negj = json['negj'] as String
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..olborloltBId = json['olborlolt_b_id'] as int
    ..olborloltHemjee = (json['olborlolt_hemjee'] as num)?.toDouble();
}

Map<String, dynamic>
    _$PaginateolborloltMedee$Query$Paginate$DsOlborloltMedeeToJson(
            PaginateolborloltMedee$Query$Paginate$DsOlborloltMedee instance) =>
        <String, dynamic>{
          'b_id': instance.bId,
          'b_torol_id': instance.bTorolId,
          'buteegdehuun': instance.buteegdehuun,
          'eh_survalj_id': instance.ehSurvaljId,
          'hemjih_negj_id': instance.hemjihNegjId,
          'id': instance.id,
          'negj': instance.negj,
          'ognoo': instance.ognoo?.toIso8601String(),
          'olborlolt_b_id': instance.olborloltBId,
          'olborlolt_hemjee': instance.olborloltHemjee,
        };

PaginateolborloltMedee$Query$Paginate
    _$PaginateolborloltMedee$Query$PaginateFromJson(Map<String, dynamic> json) {
  return PaginateolborloltMedee$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsOlborloltMedee = (json['ds_olborlolt_medee'] as List)
        ?.map((e) => e == null
            ? null
            : PaginateolborloltMedee$Query$Paginate$DsOlborloltMedee.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginateolborloltMedee$Query$PaginateToJson(
        PaginateolborloltMedee$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_olborlolt_medee':
          instance.dsOlborloltMedee?.map((e) => e?.toJson())?.toList(),
    };

PaginateolborloltMedee$Query _$PaginateolborloltMedee$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginateolborloltMedee$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginateolborloltMedee$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginateolborloltMedee$QueryToJson(
        PaginateolborloltMedee$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginatembanlHudAvalt$Query$Paginate$DsMBankHudaldanAvalt
    _$PaginatembanlHudAvalt$Query$Paginate$DsMBankHudaldanAvaltFromJson(
        Map<String, dynamic> json) {
  return PaginatembanlHudAvalt$Query$Paginate$DsMBankHudaldanAvalt()
    ..aMaltlamId = json['a_maltlam_id'] as int
    ..buteegdehuun = json['buteegdehuun'] as String
    ..ehSurvaljId = json['eh_survalj_id'] as int
    ..hAvsanHemjee = (json['h_avsan_hemjee'] as num)?.toDouble()
    ..hemjihNegjId = json['hemjih_negj_id'] as int
    ..id = json['id'] as int
    ..negj = json['negj'] as String
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..survalj = json['survalj'] as String
    ..une = (json['une'] as num)?.toDouble();
}

Map<String,
    dynamic> _$PaginatembanlHudAvalt$Query$Paginate$DsMBankHudaldanAvaltToJson(
        PaginatembanlHudAvalt$Query$Paginate$DsMBankHudaldanAvalt instance) =>
    <String, dynamic>{
      'a_maltlam_id': instance.aMaltlamId,
      'buteegdehuun': instance.buteegdehuun,
      'eh_survalj_id': instance.ehSurvaljId,
      'h_avsan_hemjee': instance.hAvsanHemjee,
      'hemjih_negj_id': instance.hemjihNegjId,
      'id': instance.id,
      'negj': instance.negj,
      'ognoo': instance.ognoo?.toIso8601String(),
      'survalj': instance.survalj,
      'une': instance.une,
    };

PaginatembanlHudAvalt$Query$Paginate
    _$PaginatembanlHudAvalt$Query$PaginateFromJson(Map<String, dynamic> json) {
  return PaginatembanlHudAvalt$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsMBankHudaldanAvalt = (json['ds_m_bank_hudaldan_avalt'] as List)
        ?.map((e) => e == null
            ? null
            : PaginatembanlHudAvalt$Query$Paginate$DsMBankHudaldanAvalt
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginatembanlHudAvalt$Query$PaginateToJson(
        PaginatembanlHudAvalt$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_m_bank_hudaldan_avalt':
          instance.dsMBankHudaldanAvalt?.map((e) => e?.toJson())?.toList(),
    };

PaginatembanlHudAvalt$Query _$PaginatembanlHudAvalt$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginatembanlHudAvalt$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginatembanlHudAvalt$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginatembanlHudAvalt$QueryToJson(
        PaginatembanlHudAvalt$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

PaginatetaamagUne$Query$Paginate$DsTaamagUne
    _$PaginatetaamagUne$Query$Paginate$DsTaamagUneFromJson(
        Map<String, dynamic> json) {
  return PaginatetaamagUne$Query$Paginate$DsTaamagUne()
    ..ashigtMId = json['ashigt_m_id'] as int
    ..ashigtMaltmal = json['ashigt_maltmal'] as String
    ..dollarTn = (json['dollar_tn'] as num)?.toDouble()
    ..ehSurvaljId = json['eh_survalj_id'] as int
    ..hNegjId = json['h_negj_id'] as int
    ..id = json['id'] as int
    ..jil = json['jil'] as String
    ..negj = json['negj'] as String
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..onId = json['on_id'] as int
    ..sar = json['sar'] as String
    ..sarId = json['sar_id'] as int
    ..survalj = json['survalj'] as String
    ..valiut = json['valiut'] as String
    ..valiutId = json['valiut_id'] as int;
}

Map<String, dynamic> _$PaginatetaamagUne$Query$Paginate$DsTaamagUneToJson(
        PaginatetaamagUne$Query$Paginate$DsTaamagUne instance) =>
    <String, dynamic>{
      'ashigt_m_id': instance.ashigtMId,
      'ashigt_maltmal': instance.ashigtMaltmal,
      'dollar_tn': instance.dollarTn,
      'eh_survalj_id': instance.ehSurvaljId,
      'h_negj_id': instance.hNegjId,
      'id': instance.id,
      'jil': instance.jil,
      'negj': instance.negj,
      'ognoo': instance.ognoo?.toIso8601String(),
      'on_id': instance.onId,
      'sar': instance.sar,
      'sar_id': instance.sarId,
      'survalj': instance.survalj,
      'valiut': instance.valiut,
      'valiut_id': instance.valiutId,
    };

PaginatetaamagUne$Query$Paginate _$PaginatetaamagUne$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return PaginatetaamagUne$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsTaamagUne = (json['ds_taamag_une'] as List)
        ?.map((e) => e == null
            ? null
            : PaginatetaamagUne$Query$Paginate$DsTaamagUne.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PaginatetaamagUne$Query$PaginateToJson(
        PaginatetaamagUne$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_taamag_une': instance.dsTaamagUne?.map((e) => e?.toJson())?.toList(),
    };

PaginatetaamagUne$Query _$PaginatetaamagUne$QueryFromJson(
    Map<String, dynamic> json) {
  return PaginatetaamagUne$Query()
    ..paginate = json['paginate'] == null
        ? null
        : PaginatetaamagUne$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaginatetaamagUne$QueryToJson(
        PaginatetaamagUne$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
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

PaginateolborloltMedeeArguments _$PaginateolborloltMedeeArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginateolborloltMedeeArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginateolborloltMedeeArgumentsToJson(
        PaginateolborloltMedeeArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginatembanlHudAvaltArguments _$PaginatembanlHudAvaltArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginatembanlHudAvaltArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginatembanlHudAvaltArgumentsToJson(
        PaginatembanlHudAvaltArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

PaginatetaamagUneArguments _$PaginatetaamagUneArgumentsFromJson(
    Map<String, dynamic> json) {
  return PaginatetaamagUneArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$PaginatetaamagUneArgumentsToJson(
        PaginatetaamagUneArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
