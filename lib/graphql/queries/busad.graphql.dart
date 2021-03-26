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
class EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBu
    with EquatableMixin {
  EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBu();

  factory EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBu.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBuFromJson(
          json);

  String asuudal;

  @JsonKey(name: 'asuudal_d')
  int asuudalD;

  @JsonKey(name: 'b_torol')
  String bTorol;

  int id;

  String tolov;

  @override
  List<Object> get props => [asuudal, asuudalD, bTorol, id, tolov];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBuToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGt
    with EquatableMixin {
  EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGt();

  factory EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGt.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGtFromJson(
          json);

  @JsonKey(name: 'a_dugaar')
  int aDugaar;

  String asuudal;

  @JsonKey(name: 'gt_torol')
  String gtTorol;

  int id;

  String tolov;

  @override
  List<Object> get props => [aDugaar, asuudal, gtTorol, id, tolov];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGtToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNoots
    with EquatableMixin {
  EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNoots();

  factory EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNoots.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNootsFromJson(
          json);

  @JsonKey(name: 'a_dugaar')
  int aDugaar;

  String asuudal;

  String buteegdehuun;

  int id;

  String tolov;

  @override
  List<Object> get props => [aDugaar, asuudal, buteegdehuun, id, tolov];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNootsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezu
    with EquatableMixin {
  EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezu();

  factory EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezu.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezuFromJson(
          json);

  @JsonKey(name: 'a_dugaar')
  int aDugaar;

  String asuudal;

  String buteegdehuun;

  int id;

  @JsonKey(name: 'sub_b_torol_id')
  int subBTorolId;

  String tolov;

  @override
  List<Object> get props =>
      [aDugaar, asuudal, buteegdehuun, id, subBTorolId, tolov];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezuToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsa
    with EquatableMixin {
  EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsa();

  factory EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsa.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsaFromJson(
          json);

  @JsonKey(name: 'a_dugaar')
  int aDugaar;

  String asuudal;

  int id;

  String torol;

  @JsonKey(name: 'uhggsa_tolov')
  String uhggsaTolov;

  @override
  List<Object> get props => [aDugaar, asuudal, id, torol, uhggsaTolov];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsaToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol with EquatableMixin {
  EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol();

  factory EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol.fromJson(
          Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlolFromJson(json);

  @JsonKey(name: 'ebmz_salbar_id')
  int ebmzSalbarId;

  @JsonKey(name: 'hh_asuudal_too')
  int hhAsuudalToo;

  int id;

  @JsonKey(name: 'jil_id')
  int jilId;

  @JsonKey(name: 'ds_sub_bu')
  List<EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBu> dsSubBu;

  @JsonKey(name: 'ds_sub_gt')
  List<EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGt> dsSubGt;

  @JsonKey(name: 'ds_sub_noots')
  List<EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNoots>
      dsSubNoots;

  @JsonKey(name: 'ds_sub_tezu')
  List<EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezu> dsSubTezu;

  @JsonKey(name: 'ds_sub_uhggsa')
  List<EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsa>
      dsSubUhggsa;

  @override
  List<Object> get props => [
        ebmzSalbarId,
        hhAsuudalToo,
        id,
        jilId,
        dsSubBu,
        dsSubGt,
        dsSubNoots,
        dsSubTezu,
        dsSubUhggsa
      ];
  Map<String, dynamic> toJson() =>
      _$EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlolToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EBMergejilZovlol$Query$Paginate with EquatableMixin {
  EBMergejilZovlol$Query$Paginate();

  factory EBMergejilZovlol$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$EBMergejilZovlol$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'aa_e_b_mergejil_zovlol')
  List<EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol> aaEBMergejilZovlol;

  @override
  List<Object> get props => [total, lastPage, aaEBMergejilZovlol];
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

  @JsonKey(name: 'b_torol')
  String bTorol;

  @JsonKey(name: 'huch_too')
  int huchToo;

  int id;

  String medeelel;

  @JsonKey(name: 'ua_chiglel_id')
  int uaChiglelId;

  String uls;

  @JsonKey(name: 'uls_id')
  int ulsId;

  @override
  List<Object> get props =>
      [ajAhuiNerId, bTorol, huchToo, id, medeelel, uaChiglelId, uls, ulsId];
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
class EBMergejilZovlolArguments extends JsonSerializable with EquatableMixin {
  EBMergejilZovlolArguments({@required this.page, @required this.size});

  @override
  factory EBMergejilZovlolArguments.fromJson(Map<String, dynamic> json) =>
      _$EBMergejilZovlolArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
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
                    name: NameNode(value: 'aa_e_b_mergejil_zovlol'),
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
                                name: NameNode(value: 'tolov'),
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
                                name: NameNode(value: 'tolov'),
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
                                name: NameNode(value: 'tolov'),
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
                                name: NameNode(value: 'tolov'),
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
                                name: NameNode(value: 'torol'),
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
  AjilahHuchMedeelelArguments({@required this.page, @required this.size});

  @override
  factory AjilahHuchMedeelelArguments.fromJson(Map<String, dynamic> json) =>
      _$AjilahHuchMedeelelArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
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
                          name: NameNode(value: 'b_torol'),
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
                          name: NameNode(value: 'ua_chiglel_id'),
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
