// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic_medee.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExportMedee$Query$Paginate$DsExportMedee
    _$ExportMedee$Query$Paginate$DsExportMedeeFromJson(
        Map<String, dynamic> json) {
  return ExportMedee$Query$Paginate$DsExportMedee()
    ..aHeregsel = json['a_heregsel'] as String
    ..boomt = json['boomt'] as String
    ..buteegdehuun = json['buteegdehuun'] as String
    ..torol = json['torol'] as String
    ..code = json['code'] as String
    ..expUneDun = (json['exp_une_dun'] as num)?.toDouble()
    ..lbaiguullaga = json['lbaiguullaga'] as String
    ..exportHemjee = (json['export_hemjee'] as num)?.toDouble()
    ..hemjihNegjId = json['hemjih_negj_id'] as int
    ..id = json['id'] as int
    ..negj = json['negj'] as String
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..survalj = json['survalj'] as String
    ..teeverToo = json['teever_too'] as int
    ..uls = json['uls'] as String;
}

Map<String, dynamic> _$ExportMedee$Query$Paginate$DsExportMedeeToJson(
        ExportMedee$Query$Paginate$DsExportMedee instance) =>
    <String, dynamic>{
      'a_heregsel': instance.aHeregsel,
      'boomt': instance.boomt,
      'buteegdehuun': instance.buteegdehuun,
      'torol': instance.torol,
      'code': instance.code,
      'exp_une_dun': instance.expUneDun,
      'lbaiguullaga': instance.lbaiguullaga,
      'export_hemjee': instance.exportHemjee,
      'hemjih_negj_id': instance.hemjihNegjId,
      'id': instance.id,
      'negj': instance.negj,
      'ognoo': instance.ognoo?.toIso8601String(),
      'survalj': instance.survalj,
      'teever_too': instance.teeverToo,
      'uls': instance.uls,
    };

ExportMedee$Query$Paginate _$ExportMedee$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return ExportMedee$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsExportMedee = (json['ds_export_medee'] as List)
        ?.map((e) => e == null
            ? null
            : ExportMedee$Query$Paginate$DsExportMedee.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ExportMedee$Query$PaginateToJson(
        ExportMedee$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_export_medee':
          instance.dsExportMedee?.map((e) => e?.toJson())?.toList(),
    };

ExportMedee$Query _$ExportMedee$QueryFromJson(Map<String, dynamic> json) {
  return ExportMedee$Query()
    ..paginate = json['paginate'] == null
        ? null
        : ExportMedee$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ExportMedee$QueryToJson(ExportMedee$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

OlborloltMedee$Query$Paginate$DsOlborloltMedee
    _$OlborloltMedee$Query$Paginate$DsOlborloltMedeeFromJson(
        Map<String, dynamic> json) {
  return OlborloltMedee$Query$Paginate$DsOlborloltMedee()
    ..bId = json['b_id'] as int
    ..bTorolId = json['b_torol_id'] as int
    ..buteegdehuun = json['buteegdehuun'] as String
    ..ehSurvaljId = json['eh_survalj_id'] as int
    ..hemjihNegjId = json['hemjih_negj_id'] as int
    ..id = json['id'] as int
    ..negj = json['negj'] as String
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..lbaiguullaga = json['lbaiguullaga'] as String
    ..olborloltHemjee = (json['olborlolt_hemjee'] as num)?.toDouble();
}

Map<String, dynamic> _$OlborloltMedee$Query$Paginate$DsOlborloltMedeeToJson(
        OlborloltMedee$Query$Paginate$DsOlborloltMedee instance) =>
    <String, dynamic>{
      'b_id': instance.bId,
      'b_torol_id': instance.bTorolId,
      'buteegdehuun': instance.buteegdehuun,
      'eh_survalj_id': instance.ehSurvaljId,
      'hemjih_negj_id': instance.hemjihNegjId,
      'id': instance.id,
      'negj': instance.negj,
      'ognoo': instance.ognoo?.toIso8601String(),
      'lbaiguullaga': instance.lbaiguullaga,
      'olborlolt_hemjee': instance.olborloltHemjee,
    };

OlborloltMedee$Query$Paginate _$OlborloltMedee$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return OlborloltMedee$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsOlborloltMedee = (json['ds_olborlolt_medee'] as List)
        ?.map((e) => e == null
            ? null
            : OlborloltMedee$Query$Paginate$DsOlborloltMedee.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$OlborloltMedee$Query$PaginateToJson(
        OlborloltMedee$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_olborlolt_medee':
          instance.dsOlborloltMedee?.map((e) => e?.toJson())?.toList(),
    };

OlborloltMedee$Query _$OlborloltMedee$QueryFromJson(Map<String, dynamic> json) {
  return OlborloltMedee$Query()
    ..paginate = json['paginate'] == null
        ? null
        : OlborloltMedee$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$OlborloltMedee$QueryToJson(
        OlborloltMedee$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvalt
    _$MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvaltFromJson(
        Map<String, dynamic> json) {
  return MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvalt()
    ..ashigtMaltmal = json['ashigt_maltmal'] as String
    ..hAvsanHemjee = (json['h_avsan_hemjee'] as num)?.toDouble()
    ..id = json['id'] as int
    ..negj = json['negj'] as String
    ..ognoo =
        json['ognoo'] == null ? null : DateTime.parse(json['ognoo'] as String)
    ..survalj = json['survalj'] as String
    ..une = (json['une'] as num)?.toDouble();
}

Map<String, dynamic>
    _$MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvaltToJson(
            MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvalt instance) =>
        <String, dynamic>{
          'ashigt_maltmal': instance.ashigtMaltmal,
          'h_avsan_hemjee': instance.hAvsanHemjee,
          'id': instance.id,
          'negj': instance.negj,
          'ognoo': instance.ognoo?.toIso8601String(),
          'survalj': instance.survalj,
          'une': instance.une,
        };

MBankHudaldanAvalt$Query$Paginate _$MBankHudaldanAvalt$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return MBankHudaldanAvalt$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsMBankHudaldanAvalt = (json['ds_m_bank_hudaldan_avalt'] as List)
        ?.map((e) => e == null
            ? null
            : MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvalt.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$MBankHudaldanAvalt$Query$PaginateToJson(
        MBankHudaldanAvalt$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_m_bank_hudaldan_avalt':
          instance.dsMBankHudaldanAvalt?.map((e) => e?.toJson())?.toList(),
    };

MBankHudaldanAvalt$Query _$MBankHudaldanAvalt$QueryFromJson(
    Map<String, dynamic> json) {
  return MBankHudaldanAvalt$Query()
    ..paginate = json['paginate'] == null
        ? null
        : MBankHudaldanAvalt$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MBankHudaldanAvalt$QueryToJson(
        MBankHudaldanAvalt$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

TaamagUne$Query$Paginate$DsTaamagUne
    _$TaamagUne$Query$Paginate$DsTaamagUneFromJson(Map<String, dynamic> json) {
  return TaamagUne$Query$Paginate$DsTaamagUne()
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

Map<String, dynamic> _$TaamagUne$Query$Paginate$DsTaamagUneToJson(
        TaamagUne$Query$Paginate$DsTaamagUne instance) =>
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

TaamagUne$Query$Paginate _$TaamagUne$Query$PaginateFromJson(
    Map<String, dynamic> json) {
  return TaamagUne$Query$Paginate()
    ..total = json['total'] as int
    ..lastPage = json['last_page'] as int
    ..dsTaamagUne = (json['ds_taamag_une'] as List)
        ?.map((e) => e == null
            ? null
            : TaamagUne$Query$Paginate$DsTaamagUne.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TaamagUne$Query$PaginateToJson(
        TaamagUne$Query$Paginate instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_page': instance.lastPage,
      'ds_taamag_une': instance.dsTaamagUne?.map((e) => e?.toJson())?.toList(),
    };

TaamagUne$Query _$TaamagUne$QueryFromJson(Map<String, dynamic> json) {
  return TaamagUne$Query()
    ..paginate = json['paginate'] == null
        ? null
        : TaamagUne$Query$Paginate.fromJson(
            json['paginate'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TaamagUne$QueryToJson(TaamagUne$Query instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
    };

ExportMedeeArguments _$ExportMedeeArgumentsFromJson(Map<String, dynamic> json) {
  return ExportMedeeArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$ExportMedeeArgumentsToJson(
        ExportMedeeArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

OlborloltMedeeArguments _$OlborloltMedeeArgumentsFromJson(
    Map<String, dynamic> json) {
  return OlborloltMedeeArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$OlborloltMedeeArgumentsToJson(
        OlborloltMedeeArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

MBankHudaldanAvaltArguments _$MBankHudaldanAvaltArgumentsFromJson(
    Map<String, dynamic> json) {
  return MBankHudaldanAvaltArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$MBankHudaldanAvaltArgumentsToJson(
        MBankHudaldanAvaltArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

TaamagUneArguments _$TaamagUneArgumentsFromJson(Map<String, dynamic> json) {
  return TaamagUneArguments(
    page: json['page'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$TaamagUneArgumentsToJson(TaamagUneArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
