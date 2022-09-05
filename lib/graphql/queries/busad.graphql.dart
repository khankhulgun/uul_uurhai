// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'busad.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorol with EquatableMixin {
  TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorol();

  factory TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorol.fromJson(
          Map<String, dynamic> json) =>
      _$TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorolFromJson(json);

  @JsonKey(name: 'a_t_too')
  double aTToo;

  @JsonKey(name: 'a_t_zovshoorol')
  double aTZovshoorol;

  @JsonKey(name: 'ashiglat_tz_huvi')
  double ashiglatTzHuvi;

  @JsonKey(name: 'haiguul_huvi')
  double haiguulHuvi;

  @JsonKey(name: 'haiguul_t_z')
  double haiguulTZ;

  @JsonKey(name: 'ht_zovshoorol')
  double htZovshoorol;

  int id;

  @JsonKey(name: 'niit_gazar_huvi')
  double niitGazarHuvi;

  @JsonKey(name: 'object_id')
  int objectId;

  DateTime ognoo;

  @JsonKey(name: 't_hemjee_say')
  double tHemjeeSay;

  @JsonKey(name: 'tz_too')
  double tzToo;

  @override
  List<Object> get props => [
        aTToo,
        aTZovshoorol,
        ashiglatTzHuvi,
        haiguulHuvi,
        haiguulTZ,
        htZovshoorol,
        id,
        niitGazarHuvi,
        objectId,
        ognoo,
        tHemjeeSay,
        tzToo
      ];
  Map<String, dynamic> toJson() =>
      _$TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorolToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TusgaiZovshoorol$Query$Paginate with EquatableMixin {
  TusgaiZovshoorol$Query$Paginate();

  factory TusgaiZovshoorol$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$TusgaiZovshoorol$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'aa_tusgai_zovshoorol')
  List<TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorol> aaTusgaiZovshoorol;

  @override
  List<Object> get props => [total, lastPage, aaTusgaiZovshoorol];
  Map<String, dynamic> toJson() =>
      _$TusgaiZovshoorol$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TusgaiZovshoorol$Query with EquatableMixin {
  TusgaiZovshoorol$Query();

  factory TusgaiZovshoorol$Query.fromJson(Map<String, dynamic> json) =>
      _$TusgaiZovshoorol$QueryFromJson(json);

  TusgaiZovshoorol$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$TusgaiZovshoorol$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt
    with EquatableMixin {
  SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt();

  factory SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt.fromJson(
          Map<String, dynamic> json) =>
      _$SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulaltFromJson(
          json);

  @JsonKey(name: 'aj_negj_too')
  int ajNegjToo;

  int id;

  @JsonKey(name: 'o_t_hemjee')
  double oTHemjee;

  String ognoo;

  @JsonKey(name: 's_sh_dugaar')
  int sShDugaar;

  @JsonKey(name: 'table_id')
  int tableId;

  double tovolruulsen;

  @JsonKey(name: 'z_t_too')
  int zTToo;

  @JsonKey(name: 'zaralsan_talbai')
  double zaralsanTalbai;

  @override
  List<Object> get props => [
        ajNegjToo,
        id,
        oTHemjee,
        ognoo,
        sShDugaar,
        tableId,
        tovolruulsen,
        zTToo,
        zaralsanTalbai
      ];
  Map<String, dynamic> toJson() =>
      _$SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulaltToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt
    with EquatableMixin {
  SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt();

  factory SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt.fromJson(
          Map<String, dynamic> json) =>
      _$SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulaltFromJson(json);

  int id;

  @JsonKey(name: 'object_id')
  int objectId;

  DateTime ognoo;

  @JsonKey(name: 'ologson_hegmjee_ga')
  double ologsonHegmjeeGa;

  @JsonKey(name: 'ologson_z_too')
  double ologsonZToo;

  @JsonKey(name: 's_sh_bagts')
  double sShBagts;

  @JsonKey(name: 's_sh_hemjee_ga')
  double sShHemjeeGa;

  @JsonKey(name: 's_sh_talbai')
  double sShTalbai;

  @JsonKey(name: 'uls_tosov_terbum')
  double ulsTosovTerbum;

  @JsonKey(name: 'sub_songon_shalgaruulalt')
  List<SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt>
      subSongonShalgaruulalt;

  @override
  List<Object> get props => [
        id,
        objectId,
        ognoo,
        ologsonHegmjeeGa,
        ologsonZToo,
        sShBagts,
        sShHemjeeGa,
        sShTalbai,
        ulsTosovTerbum,
        subSongonShalgaruulalt
      ];
  Map<String, dynamic> toJson() =>
      _$SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulaltToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SongonShalgaruulalt$Query$Paginate with EquatableMixin {
  SongonShalgaruulalt$Query$Paginate();

  factory SongonShalgaruulalt$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$SongonShalgaruulalt$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'aa_songon_shalgaruulalt')
  List<SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt>
      aaSongonShalgaruulalt;

  @override
  List<Object> get props => [total, lastPage, aaSongonShalgaruulalt];
  Map<String, dynamic> toJson() =>
      _$SongonShalgaruulalt$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SongonShalgaruulalt$Query with EquatableMixin {
  SongonShalgaruulalt$Query();

  factory SongonShalgaruulalt$Query.fromJson(Map<String, dynamic> json) =>
      _$SongonShalgaruulalt$QueryFromJson(json);

  SongonShalgaruulalt$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$SongonShalgaruulalt$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubBu
    with EquatableMixin {
  EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubBu();

  factory EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubBu.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubBuFromJson(
          json);

  String asuudal;

  @JsonKey(name: 'asuudal_d')
  int asuudalD;

  @JsonKey(name: 'b_torol')
  String bTorol;

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  String tolov;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @JsonKey(name: 'torol_id')
  int torolId;

  @override
  List<Object> get props =>
      [asuudal, asuudalD, bTorol, id, tableId, tolov, tolovId, torolId];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubBuToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubGt
    with EquatableMixin {
  EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubGt();

  factory EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubGt.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubGtFromJson(
          json);

  @JsonKey(name: 'a_dugaar')
  int aDugaar;

  String asuudal;

  @JsonKey(name: 'gt_torol')
  String gtTorol;

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  String tolov;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @JsonKey(name: 'torol_id')
  int torolId;

  @override
  List<Object> get props =>
      [aDugaar, asuudal, gtTorol, id, tableId, tolov, tolovId, torolId];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubGtToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubNoots
    with EquatableMixin {
  EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubNoots();

  factory EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubNoots.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubNootsFromJson(
          json);

  @JsonKey(name: 'a_dugaar')
  int aDugaar;

  String asuudal;

  String buteegdehuun;

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  String tolov;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @JsonKey(name: 'torol_id')
  int torolId;

  @override
  List<Object> get props =>
      [aDugaar, asuudal, buteegdehuun, id, tableId, tolov, tolovId, torolId];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubNootsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubTezu
    with EquatableMixin {
  EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubTezu();

  factory EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubTezu.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubTezuFromJson(
          json);

  @JsonKey(name: 'a_dugaar')
  int aDugaar;

  String asuudal;

  String buteegdehuun;

  int id;

  @JsonKey(name: 'sub_b_torol_id')
  int subBTorolId;

  @JsonKey(name: 'table_id')
  int tableId;

  String tolov;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @override
  List<Object> get props => [
        aDugaar,
        asuudal,
        buteegdehuun,
        id,
        subBTorolId,
        tableId,
        tolov,
        tolovId
      ];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubTezuToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa
    with EquatableMixin {
  EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa();

  factory EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsaFromJson(
          json);

  @JsonKey(name: 'a_dugaar')
  int aDugaar;

  String asuudal;

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  String torol;

  @JsonKey(name: 'torol_id')
  int torolId;

  @JsonKey(name: 'uhggsa_tolov')
  String uhggsaTolov;

  @override
  List<Object> get props =>
      [aDugaar, asuudal, id, tableId, tolovId, torol, torolId, uhggsaTolov];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsaToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol
    with EquatableMixin {
  EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol();

  factory EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlolFromJson(json);

  @JsonKey(name: 'ebmz_salbar_id')
  int ebmzSalbarId;

  @JsonKey(name: 'hh_asuudal_too')
  int hhAsuudalToo;

  int id;

  @JsonKey(name: 'jil_id')
  int jilId;

  String zovlol;

  @JsonKey(name: 'ds_sub_bu')
  List<EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubBu> dsSubBu;

  @JsonKey(name: 'ds_sub_gt')
  List<EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubGt> dsSubGt;

  @JsonKey(name: 'ds_sub_noots')
  List<EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubNoots>
      dsSubNoots;

  @JsonKey(name: 'ds_sub_tezu')
  List<EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubTezu>
      dsSubTezu;

  @JsonKey(name: 'ds_sub_uhggsa')
  List<EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa>
      dsSubUhggsa;

  @override
  List<Object> get props => [
        ebmzSalbarId,
        hhAsuudalToo,
        id,
        jilId,
        zovlol,
        dsSubBu,
        dsSubGt,
        dsSubNoots,
        dsSubTezu,
        dsSubUhggsa
      ];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlolToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlolAll$Query$Paginate with EquatableMixin {
  EBMergejilZovlolAll$Query$Paginate();

  factory EBMergejilZovlolAll$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlolAll$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_e_b_mergejil_zovlol')
  List<EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol>
      dsEBMergejilZovlol;

  @override
  List<Object> get props => [total, lastPage, dsEBMergejilZovlol];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlolAll$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlolAll$Query with EquatableMixin {
  EBMergejilZovlolAll$Query();

  factory EBMergejilZovlolAll$Query.fromJson(Map<String, dynamic> json) =>
      _$EBMergejilZovlolAll$QueryFromJson(json);

  EBMergejilZovlolAll$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$EBMergejilZovlolAll$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubBu
    with EquatableMixin {
  EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubBu();

  factory EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubBu.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubBuFromJson(
          json);

  String asuudal;

  @JsonKey(name: 'asuudal_d')
  int asuudalD;

  @JsonKey(name: 'b_torol')
  String bTorol;

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  String tolov;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @JsonKey(name: 'torol_id')
  int torolId;

  @override
  List<Object> get props =>
      [asuudal, asuudalD, bTorol, id, tableId, tolov, tolovId, torolId];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubBuToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubGt
    with EquatableMixin {
  EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubGt();

  factory EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubGt.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubGtFromJson(
          json);

  @JsonKey(name: 'a_dugaar')
  int aDugaar;

  String asuudal;

  @JsonKey(name: 'gt_torol')
  String gtTorol;

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  String tolov;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @JsonKey(name: 'torol_id')
  int torolId;

  @override
  List<Object> get props =>
      [aDugaar, asuudal, gtTorol, id, tableId, tolov, tolovId, torolId];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubGtToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubNoots
    with EquatableMixin {
  EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubNoots();

  factory EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubNoots.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubNootsFromJson(
          json);

  @JsonKey(name: 'a_dugaar')
  int aDugaar;

  String asuudal;

  String buteegdehuun;

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  String tolov;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @JsonKey(name: 'torol_id')
  int torolId;

  @override
  List<Object> get props =>
      [aDugaar, asuudal, buteegdehuun, id, tableId, tolov, tolovId, torolId];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubNootsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubTezu
    with EquatableMixin {
  EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubTezu();

  factory EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubTezu.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubTezuFromJson(
          json);

  @JsonKey(name: 'a_dugaar')
  int aDugaar;

  String asuudal;

  String buteegdehuun;

  int id;

  @JsonKey(name: 'sub_b_torol_id')
  int subBTorolId;

  @JsonKey(name: 'table_id')
  int tableId;

  String tolov;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @override
  List<Object> get props => [
        aDugaar,
        asuudal,
        buteegdehuun,
        id,
        subBTorolId,
        tableId,
        tolov,
        tolovId
      ];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubTezuToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa
    with EquatableMixin {
  EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa();

  factory EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsaFromJson(
          json);

  @JsonKey(name: 'a_dugaar')
  int aDugaar;

  String asuudal;

  int id;

  @JsonKey(name: 'table_id')
  int tableId;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  String torol;

  @JsonKey(name: 'torol_id')
  int torolId;

  @JsonKey(name: 'uhggsa_tolov')
  String uhggsaTolov;

  @override
  List<Object> get props =>
      [aDugaar, asuudal, id, tableId, tolovId, torol, torolId, uhggsaTolov];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsaToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol with EquatableMixin {
  EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol();

  factory EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlolFromJson(json);

  @JsonKey(name: 'ebmz_salbar_id')
  int ebmzSalbarId;

  @JsonKey(name: 'hh_asuudal_too')
  int hhAsuudalToo;

  int id;

  @JsonKey(name: 'jil_id')
  int jilId;

  String zovlol;

  @JsonKey(name: 'huraldaan_dugaar')
  int huraldaanDugaar;

  @JsonKey(name: 'ds_sub_bu')
  List<EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubBu> dsSubBu;

  @JsonKey(name: 'ds_sub_gt')
  List<EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubGt> dsSubGt;

  @JsonKey(name: 'ds_sub_noots')
  List<EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubNoots>
      dsSubNoots;

  @JsonKey(name: 'ds_sub_tezu')
  List<EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubTezu> dsSubTezu;

  @JsonKey(name: 'ds_sub_uhggsa')
  List<EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol$DsSubUhggsa>
      dsSubUhggsa;

  @override
  List<Object> get props => [
        ebmzSalbarId,
        hhAsuudalToo,
        id,
        jilId,
        zovlol,
        huraldaanDugaar,
        dsSubBu,
        dsSubGt,
        dsSubNoots,
        dsSubTezu,
        dsSubUhggsa
      ];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlolToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate with EquatableMixin {
  EBMergejilZovlol$Query$Paginate();

  factory EBMergejilZovlol$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_e_b_mergejil_zovlol')
  List<EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol> dsEBMergejilZovlol;

  @override
  List<Object> get props => [total, lastPage, dsEBMergejilZovlol];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query with EquatableMixin {
  EBMergejilZovlol$Query();

  factory EBMergejilZovlol$Query.fromJson(Map<String, dynamic> json) =>
      _$EBMergejilZovlol$QueryFromJson(json);

  EBMergejilZovlol$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$EBMergejilZovlol$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel
    with EquatableMixin {
  AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel();

  factory AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel.fromJson(
          Map<String, dynamic> json) =>
      _$AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelelFromJson(json);

  @JsonKey(name: 'aj_ahui_ner_id')
  String ajAhuiNerId;

  String chiglel;

  @JsonKey(name: 'huch_too')
  int huchToo;

  String jil;

  @JsonKey(name: 'jil_id')
  int jilId;

  int id;

  String medeelel;

  String uls;

  @JsonKey(name: 'uls_id')
  int ulsId;

  @override
  List<Object> get props =>
      [ajAhuiNerId, chiglel, huchToo, jil, jilId, id, medeelel, uls, ulsId];
  Map<String, dynamic> toJson() =>
      _$AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AjilahHuchMedeelel$Query$Paginate with EquatableMixin {
  AjilahHuchMedeelel$Query$Paginate();

  factory AjilahHuchMedeelel$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$AjilahHuchMedeelel$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_ajilah_huch_medeelel')
  List<AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel>
      dsAjilahHuchMedeelel;

  @override
  List<Object> get props => [total, lastPage, dsAjilahHuchMedeelel];
  Map<String, dynamic> toJson() =>
      _$AjilahHuchMedeelel$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AjilahHuchMedeelel$Query with EquatableMixin {
  AjilahHuchMedeelel$Query();

  factory AjilahHuchMedeelel$Query.fromJson(Map<String, dynamic> json) =>
      _$AjilahHuchMedeelel$QueryFromJson(json);

  AjilahHuchMedeelel$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$AjilahHuchMedeelel$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrengui
    with EquatableMixin {
  SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrengui();

  factory SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrengui.fromJson(
          Map<String, dynamic> json) =>
      _$SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrenguiFromJson(
          json);

  @JsonKey(name: 'a_niislel')
  double aNiislel;

  @JsonKey(name: 'bosgo_une')
  double bosgoUne;

  int id;

  @JsonKey(name: 'object_id')
  int objectId;

  DateTime ognoo;

  @JsonKey(name: 's_sh_code')
  double sShCode;

  @JsonKey(name: 'sum_duureg')
  double sumDuureg;

  @JsonKey(name: 'talbain_dugaar')
  double talbainDugaar;

  @JsonKey(name: 'talbain_hemjee')
  double talbainHemjee;

  @override
  List<Object> get props => [
        aNiislel,
        bosgoUne,
        id,
        objectId,
        ognoo,
        sShCode,
        sumDuureg,
        talbainDugaar,
        talbainHemjee
      ];
  Map<String, dynamic> toJson() =>
      _$SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrenguiToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class SongonShalagruulaltDelegrengui$Query$Paginate with EquatableMixin {
  SongonShalagruulaltDelegrengui$Query$Paginate();

  factory SongonShalagruulaltDelegrengui$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$SongonShalagruulaltDelegrengui$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'aa_songon_shalagruulalt_delegrengui')
  List<SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrengui>
      aaSongonShalagruulaltDelegrengui;

  @override
  List<Object> get props => [total, lastPage, aaSongonShalagruulaltDelegrengui];
  Map<String, dynamic> toJson() =>
      _$SongonShalagruulaltDelegrengui$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SongonShalagruulaltDelegrengui$Query with EquatableMixin {
  SongonShalagruulaltDelegrengui$Query();

  factory SongonShalagruulaltDelegrengui$Query.fromJson(
          Map<String, dynamic> json) =>
      _$SongonShalagruulaltDelegrengui$QueryFromJson(json);

  SongonShalagruulaltDelegrengui$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() =>
      _$SongonShalagruulaltDelegrengui$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LutEbmZovlol$Query$LutEbmZovlol with EquatableMixin {
  LutEbmZovlol$Query$LutEbmZovlol();

  factory LutEbmZovlol$Query$LutEbmZovlol.fromJson(Map<String, dynamic> json) =>
      _$LutEbmZovlol$Query$LutEbmZovlolFromJson(json);

  int id;

  String zovlol;

  @override
  List<Object> get props => [id, zovlol];
  Map<String, dynamic> toJson() =>
      _$LutEbmZovlol$Query$LutEbmZovlolToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LutEbmZovlol$Query with EquatableMixin {
  LutEbmZovlol$Query();

  factory LutEbmZovlol$Query.fromJson(Map<String, dynamic> json) =>
      _$LutEbmZovlol$QueryFromJson(json);

  @JsonKey(name: 'lut_ebm_zovlol')
  List<LutEbmZovlol$Query$LutEbmZovlol> lutEbmZovlol;

  @override
  List<Object> get props => [lutEbmZovlol];
  Map<String, dynamic> toJson() => _$LutEbmZovlol$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LutJil$Query$LutJil with EquatableMixin {
  LutJil$Query$LutJil();

  factory LutJil$Query$LutJil.fromJson(Map<String, dynamic> json) =>
      _$LutJil$Query$LutJilFromJson(json);

  int id;

  String jil;

  @override
  List<Object> get props => [id, jil];
  Map<String, dynamic> toJson() => _$LutJil$Query$LutJilToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LutJil$Query with EquatableMixin {
  LutJil$Query();

  factory LutJil$Query.fromJson(Map<String, dynamic> json) =>
      _$LutJil$QueryFromJson(json);

  @JsonKey(name: 'lut_jil')
  List<LutJil$Query$LutJil> lutJil;

  @override
  List<Object> get props => [lutJil];
  Map<String, dynamic> toJson() => _$LutJil$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LutUls$Query$LutUls with EquatableMixin {
  LutUls$Query$LutUls();

  factory LutUls$Query$LutUls.fromJson(Map<String, dynamic> json) =>
      _$LutUls$Query$LutUlsFromJson(json);

  int id;

  String uls;

  @override
  List<Object> get props => [id, uls];
  Map<String, dynamic> toJson() => _$LutUls$Query$LutUlsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LutUls$Query with EquatableMixin {
  LutUls$Query();

  factory LutUls$Query.fromJson(Map<String, dynamic> json) =>
      _$LutUls$QueryFromJson(json);

  @JsonKey(name: 'lut_uls')
  List<LutUls$Query$LutUls> lutUls;

  @override
  List<Object> get props => [lutUls];
  Map<String, dynamic> toJson() => _$LutUls$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaar
    with EquatableMixin {
  HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaar();

  factory HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaar.fromJson(
          Map<String, dynamic> json) =>
      _$HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaarFromJson(json);

  @JsonKey(name: 'huraldaan_dugaar')
  int huraldaanDugaar;

  int id;

  @override
  List<Object> get props => [huraldaanDugaar, id];
  Map<String, dynamic> toJson() =>
      _$HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaarToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HuraldaanDugaar$Query with EquatableMixin {
  HuraldaanDugaar$Query();

  factory HuraldaanDugaar$Query.fromJson(Map<String, dynamic> json) =>
      _$HuraldaanDugaar$QueryFromJson(json);

  @JsonKey(name: 'ds_view_e_b_mergejil_huraldaan_dugaar')
  List<HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaar>
      dsViewEBMergejilHuraldaanDugaar;

  @override
  List<Object> get props => [dsViewEBMergejilHuraldaanDugaar];
  Map<String, dynamic> toJson() => _$HuraldaanDugaar$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TusgaiZovshoorolArguments extends JsonSerializable with EquatableMixin {
  TusgaiZovshoorolArguments({@required this.page, @required this.size});

  @override
  factory TusgaiZovshoorolArguments.fromJson(Map<String, dynamic> json) =>
      _$TusgaiZovshoorolArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$TusgaiZovshoorolArgumentsToJson(this);
}

class TusgaiZovshoorolQuery
    extends GraphQLQuery<TusgaiZovshoorol$Query, TusgaiZovshoorolArguments> {
  TusgaiZovshoorolQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'tusgai_zovshoorol'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'page')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'size')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'paginate'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'sorts'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'desc')))
                      ])
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page'))),
                ArgumentNode(
                    name: NameNode(value: 'size'),
                    value: VariableNode(name: NameNode(value: 'size')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'last_page'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'aa_tusgai_zovshoorol'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'a_t_too'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'a_t_zovshoorol'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ashiglat_tz_huvi'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'haiguul_huvi'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'haiguul_t_z'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ht_zovshoorol'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'niit_gazar_huvi'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'object_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ognoo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 't_hemjee_say'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tz_too'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'tusgai_zovshoorol';

  @override
  final TusgaiZovshoorolArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  TusgaiZovshoorol$Query parse(Map<String, dynamic> json) =>
      TusgaiZovshoorol$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SongonShalgaruulaltArguments extends JsonSerializable
    with EquatableMixin {
  SongonShalgaruulaltArguments({@required this.page, @required this.size});

  @override
  factory SongonShalgaruulaltArguments.fromJson(Map<String, dynamic> json) =>
      _$SongonShalgaruulaltArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$SongonShalgaruulaltArgumentsToJson(this);
}

class SongonShalgaruulaltQuery extends GraphQLQuery<SongonShalgaruulalt$Query,
    SongonShalgaruulaltArguments> {
  SongonShalgaruulaltQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'songon_shalgaruulalt'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'page')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'size')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'paginate'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'sorts'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'desc')))
                      ])
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page'))),
                ArgumentNode(
                    name: NameNode(value: 'size'),
                    value: VariableNode(name: NameNode(value: 'size')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'last_page'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'aa_songon_shalgaruulalt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'object_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ognoo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ologson_hegmjee_ga'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ologson_z_too'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 's_sh_bagts'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 's_sh_hemjee_ga'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 's_sh_talbai'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'uls_tosov_terbum'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sub_songon_shalgaruulalt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'aj_negj_too'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'o_t_hemjee'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'ognoo'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 's_sh_dugaar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tovolruulsen'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'z_t_too'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'zaralsan_talbai'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'songon_shalgaruulalt';

  @override
  final SongonShalgaruulaltArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  SongonShalgaruulalt$Query parse(Map<String, dynamic> json) =>
      SongonShalgaruulalt$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlolAllArguments extends JsonSerializable
    with EquatableMixin {
  EBMergejilZovlolAllArguments({@required this.page, @required this.size});

  @override
  factory EBMergejilZovlolAllArguments.fromJson(Map<String, dynamic> json) =>
      _$EBMergejilZovlolAllArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$EBMergejilZovlolAllArgumentsToJson(this);
}

class EBMergejilZovlolAllQuery extends GraphQLQuery<EBMergejilZovlolAll$Query,
    EBMergejilZovlolAllArguments> {
  EBMergejilZovlolAllQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'e_b_mergejil_zovlol_all'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'page')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'size')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'paginate'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'sorts'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'desc')))
                      ])
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page'))),
                ArgumentNode(
                    name: NameNode(value: 'size'),
                    value: VariableNode(name: NameNode(value: 'size')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'last_page'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'ds_e_b_mergejil_zovlol'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'ebmz_salbar_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hh_asuudal_too'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'jil_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'zovlol'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_bu'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'asuudal'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'asuudal_d'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'b_torol'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_gt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'a_dugaar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'asuudal'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'gt_torol'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_noots'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'a_dugaar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'asuudal'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'buteegdehuun'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_tezu'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'a_dugaar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'asuudal'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'buteegdehuun'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'sub_b_torol_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_uhggsa'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'a_dugaar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'asuudal'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'uhggsa_tolov'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'e_b_mergejil_zovlol_all';

  @override
  final EBMergejilZovlolAllArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  EBMergejilZovlolAll$Query parse(Map<String, dynamic> json) =>
      EBMergejilZovlolAll$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlolArguments extends JsonSerializable with EquatableMixin {
  EBMergejilZovlolArguments(
      {@required this.page,
      @required this.size,
      @required this.turul_id,
      @required this.aanDugaar,
      @required this.jil_id});

  @override
  factory EBMergejilZovlolArguments.fromJson(Map<String, dynamic> json) =>
      _$EBMergejilZovlolArgumentsFromJson(json);

  final int page;

  final int size;

  final String turul_id;

  final String aanDugaar;

  final String jil_id;

  @override
  List<Object> get props => [page, size, turul_id, aanDugaar, jil_id];
  @override
  Map<String, dynamic> toJson() => _$EBMergejilZovlolArgumentsToJson(this);
}

class EBMergejilZovlolQuery
    extends GraphQLQuery<EBMergejilZovlol$Query, EBMergejilZovlolArguments> {
  EBMergejilZovlolQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'e_b_mergejil_zovlol'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'page')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'size')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'turul_id')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'aanDugaar')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'jil_id')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'paginate'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'sorts'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'desc')))
                      ])
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page'))),
                ArgumentNode(
                    name: NameNode(value: 'size'),
                    value: VariableNode(name: NameNode(value: 'size'))),
                ArgumentNode(
                    name: NameNode(value: 'filters'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value: StringValueNode(
                                value: 'huraldaan_dugaar', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'condition'),
                            value: EnumValueNode(
                                name: NameNode(value: 'contains'))),
                        ObjectFieldNode(
                            name: NameNode(value: 'value'),
                            value: VariableNode(
                                name: NameNode(value: 'aanDugaar')))
                      ])
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'groupFilters'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'combine'),
                            value: EnumValueNode(name: NameNode(value: 'or'))),
                        ObjectFieldNode(
                            name: NameNode(value: 'filters'),
                            value: ListValueNode(values: [
                              ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'column'),
                                    value: StringValueNode(
                                        value: 'ebmz_salbar_id',
                                        isBlock: false)),
                                ObjectFieldNode(
                                    name: NameNode(value: 'condition'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'equals'))),
                                ObjectFieldNode(
                                    name: NameNode(value: 'value'),
                                    value: VariableNode(
                                        name: NameNode(value: 'turul_id')))
                              ]),
                              ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'column'),
                                    value: StringValueNode(
                                        value: 'jil_id', isBlock: false)),
                                ObjectFieldNode(
                                    name: NameNode(value: 'condition'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'equals'))),
                                ObjectFieldNode(
                                    name: NameNode(value: 'value'),
                                    value: VariableNode(
                                        name: NameNode(value: 'jil_id')))
                              ])
                            ]))
                      ])
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'last_page'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'ds_e_b_mergejil_zovlol'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'ebmz_salbar_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hh_asuudal_too'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'jil_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'zovlol'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'huraldaan_dugaar'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_bu'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'asuudal'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'asuudal_d'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'b_torol'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_gt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'a_dugaar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'asuudal'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'gt_torol'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_noots'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'a_dugaar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'asuudal'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'buteegdehuun'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_tezu'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'a_dugaar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'asuudal'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'buteegdehuun'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'sub_b_torol_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_uhggsa'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'a_dugaar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'asuudal'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'table_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'tolov_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'torol_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'uhggsa_tolov'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'e_b_mergejil_zovlol';

  @override
  final EBMergejilZovlolArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  EBMergejilZovlol$Query parse(Map<String, dynamic> json) =>
      EBMergejilZovlol$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AjilahHuchMedeelelArguments extends JsonSerializable with EquatableMixin {
  AjilahHuchMedeelelArguments(
      {@required this.page,
      @required this.size,
      @required this.uls_id,
      @required this.aanName,
      @required this.jil_id});

  @override
  factory AjilahHuchMedeelelArguments.fromJson(Map<String, dynamic> json) =>
      _$AjilahHuchMedeelelArgumentsFromJson(json);

  final int page;

  final int size;

  final String uls_id;

  final String aanName;

  final String jil_id;

  @override
  List<Object> get props => [page, size, uls_id, aanName, jil_id];
  @override
  Map<String, dynamic> toJson() => _$AjilahHuchMedeelelArgumentsToJson(this);
}

class AjilahHuchMedeelelQuery extends GraphQLQuery<AjilahHuchMedeelel$Query,
    AjilahHuchMedeelelArguments> {
  AjilahHuchMedeelelQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ajilah_huch_medeelel'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'page')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'size')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'uls_id')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'aanName')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'jil_id')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'paginate'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'sorts'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'desc')))
                      ])
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page'))),
                ArgumentNode(
                    name: NameNode(value: 'size'),
                    value: VariableNode(name: NameNode(value: 'size'))),
                ArgumentNode(
                    name: NameNode(value: 'groupFilters'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'combine'),
                            value: EnumValueNode(name: NameNode(value: 'or'))),
                        ObjectFieldNode(
                            name: NameNode(value: 'filters'),
                            value: ListValueNode(values: [
                              ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'column'),
                                    value: StringValueNode(
                                        value: 'uls_id', isBlock: false)),
                                ObjectFieldNode(
                                    name: NameNode(value: 'condition'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'equals'))),
                                ObjectFieldNode(
                                    name: NameNode(value: 'value'),
                                    value: VariableNode(
                                        name: NameNode(value: 'uls_id')))
                              ]),
                              ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: 'column'),
                                    value: StringValueNode(
                                        value: 'jil_id', isBlock: false)),
                                ObjectFieldNode(
                                    name: NameNode(value: 'condition'),
                                    value: EnumValueNode(
                                        name: NameNode(value: 'equals'))),
                                ObjectFieldNode(
                                    name: NameNode(value: 'value'),
                                    value: VariableNode(
                                        name: NameNode(value: 'jil_id')))
                              ])
                            ]))
                      ])
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'filters'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value: StringValueNode(
                                value: 'aj_ahui_ner_id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'condition'),
                            value: EnumValueNode(
                                name: NameNode(value: 'contains'))),
                        ObjectFieldNode(
                            name: NameNode(value: 'value'),
                            value:
                                VariableNode(name: NameNode(value: 'aanName')))
                      ])
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'last_page'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'ds_ajilah_huch_medeelel'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'aj_ahui_ner_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'chiglel'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'huch_too'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'jil'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'jil_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'medeelel'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'uls'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'uls_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ajilah_huch_medeelel';

  @override
  final AjilahHuchMedeelelArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  AjilahHuchMedeelel$Query parse(Map<String, dynamic> json) =>
      AjilahHuchMedeelel$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class SongonShalagruulaltDelegrenguiArguments extends JsonSerializable
    with EquatableMixin {
  SongonShalagruulaltDelegrenguiArguments(
      {@required this.page, @required this.size});

  @override
  factory SongonShalagruulaltDelegrenguiArguments.fromJson(
          Map<String, dynamic> json) =>
      _$SongonShalagruulaltDelegrenguiArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() =>
      _$SongonShalagruulaltDelegrenguiArgumentsToJson(this);
}

class SongonShalagruulaltDelegrenguiQuery extends GraphQLQuery<
    SongonShalagruulaltDelegrengui$Query,
    SongonShalagruulaltDelegrenguiArguments> {
  SongonShalagruulaltDelegrenguiQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'songon_shalagruulalt_delegrengui'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'page')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'size')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'paginate'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'sorts'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'desc')))
                      ])
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page'))),
                ArgumentNode(
                    name: NameNode(value: 'size'),
                    value: VariableNode(name: NameNode(value: 'size')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'last_page'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name:
                        NameNode(value: 'aa_songon_shalagruulalt_delegrengui'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'a_niislel'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'bosgo_une'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'object_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ognoo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 's_sh_code'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sum_duureg'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'talbain_dugaar'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'talbain_hemjee'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'songon_shalagruulalt_delegrengui';

  @override
  final SongonShalagruulaltDelegrenguiArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  SongonShalagruulaltDelegrengui$Query parse(Map<String, dynamic> json) =>
      SongonShalagruulaltDelegrengui$Query.fromJson(json);
}

class LutEbmZovlolQuery
    extends GraphQLQuery<LutEbmZovlol$Query, JsonSerializable> {
  LutEbmZovlolQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'lut_ebm_zovlol'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'lut_ebm_zovlol'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'sorts'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'asc')))
                      ])
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'zovlol'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'lut_ebm_zovlol';

  @override
  List<Object> get props => [document, operationName];
  @override
  LutEbmZovlol$Query parse(Map<String, dynamic> json) =>
      LutEbmZovlol$Query.fromJson(json);
}

class LutJilQuery extends GraphQLQuery<LutJil$Query, JsonSerializable> {
  LutJilQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'lut_jil'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'lut_jil'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'sorts'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'asc')))
                      ])
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'jil'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'lut_jil';

  @override
  List<Object> get props => [document, operationName];
  @override
  LutJil$Query parse(Map<String, dynamic> json) => LutJil$Query.fromJson(json);
}

class LutUlsQuery extends GraphQLQuery<LutUls$Query, JsonSerializable> {
  LutUlsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'lut_uls'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'lut_uls'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'sorts'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'asc')))
                      ])
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'uls'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'lut_uls';

  @override
  List<Object> get props => [document, operationName];
  @override
  LutUls$Query parse(Map<String, dynamic> json) => LutUls$Query.fromJson(json);
}

class HuraldaanDugaarQuery
    extends GraphQLQuery<HuraldaanDugaar$Query, JsonSerializable> {
  HuraldaanDugaarQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'huraldaan_dugaar'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'ds_view_e_b_mergejil_huraldaan_dugaar'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'sorts'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'asc')))
                      ])
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'huraldaan_dugaar'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'huraldaan_dugaar';

  @override
  List<Object> get props => [document, operationName];
  @override
  HuraldaanDugaar$Query parse(Map<String, dynamic> json) =>
      HuraldaanDugaar$Query.fromJson(json);
}
