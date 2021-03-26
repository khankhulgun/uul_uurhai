// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'busad.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class PaginatetusgaiZuvshuurul$Query$Paginate$AaTusgaiZovshoorol
    with EquatableMixin {
  PaginatetusgaiZuvshuurul$Query$Paginate$AaTusgaiZovshoorol();

  factory PaginatetusgaiZuvshuurul$Query$Paginate$AaTusgaiZovshoorol.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatetusgaiZuvshuurul$Query$Paginate$AaTusgaiZovshoorolFromJson(
          json);

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
      _$PaginatetusgaiZuvshuurul$Query$Paginate$AaTusgaiZovshoorolToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatetusgaiZuvshuurul$Query$Paginate with EquatableMixin {
  PaginatetusgaiZuvshuurul$Query$Paginate();

  factory PaginatetusgaiZuvshuurul$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatetusgaiZuvshuurul$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'aa_tusgai_zovshoorol')
  List<PaginatetusgaiZuvshuurul$Query$Paginate$AaTusgaiZovshoorol>
      aaTusgaiZovshoorol;

  @override
  List<Object> get props => [total, lastPage, aaTusgaiZovshoorol];
  Map<String, dynamic> toJson() =>
      _$PaginatetusgaiZuvshuurul$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatetusgaiZuvshuurul$Query with EquatableMixin {
  PaginatetusgaiZuvshuurul$Query();

  factory PaginatetusgaiZuvshuurul$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginatetusgaiZuvshuurul$QueryFromJson(json);

  PaginatetusgaiZuvshuurul$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginatetusgaiZuvshuurul$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt
    with EquatableMixin {
  PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt();

  factory PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulaltFromJson(
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
      _$PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulaltToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt
    with EquatableMixin {
  PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt();

  factory PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulaltFromJson(
          json);

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
  List<PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt$SubSongonShalgaruulalt>
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
      _$PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulaltToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PaginatesongonShalgaruulalt$Query$Paginate with EquatableMixin {
  PaginatesongonShalgaruulalt$Query$Paginate();

  factory PaginatesongonShalgaruulalt$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatesongonShalgaruulalt$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'aa_songon_shalgaruulalt')
  List<PaginatesongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt>
      aaSongonShalgaruulalt;

  @override
  List<Object> get props => [total, lastPage, aaSongonShalgaruulalt];
  Map<String, dynamic> toJson() =>
      _$PaginatesongonShalgaruulalt$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatesongonShalgaruulalt$Query with EquatableMixin {
  PaginatesongonShalgaruulalt$Query();

  factory PaginatesongonShalgaruulalt$Query.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatesongonShalgaruulalt$QueryFromJson(json);

  PaginatesongonShalgaruulalt$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() =>
      _$PaginatesongonShalgaruulalt$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBu
    with EquatableMixin {
  PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBu();

  factory PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBu.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBuFromJson(
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

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @override
  List<Object> get props =>
      [asuudal, asuudalD, bTorol, id, tableId, tolov, tolovId, tolovId];
  Map<String, dynamic> toJson() =>
      _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBuToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGt
    with EquatableMixin {
  PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGt();

  factory PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGt.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGtFromJson(
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

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @override
  List<Object> get props =>
      [aDugaar, asuudal, gtTorol, id, tableId, tolov, tolovId, tolovId];
  Map<String, dynamic> toJson() =>
      _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGtToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNoots
    with EquatableMixin {
  PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNoots();

  factory PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNoots.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNootsFromJson(
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

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @override
  List<Object> get props =>
      [aDugaar, asuudal, buteegdehuun, id, tableId, tolov, tolovId, tolovId];
  Map<String, dynamic> toJson() =>
      _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNootsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezu
    with EquatableMixin {
  PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezu();

  factory PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezu.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezuFromJson(
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
      _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezuToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsa
    with EquatableMixin {
  PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsa();

  factory PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsa.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsaFromJson(
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

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @JsonKey(name: 'uhggsa_tolov')
  String uhggsaTolov;

  @override
  List<Object> get props =>
      [aDugaar, asuudal, id, tableId, tolovId, torol, tolovId, uhggsaTolov];
  Map<String, dynamic> toJson() =>
      _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsaToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol
    with EquatableMixin {
  PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol();

  factory PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlolFromJson(
          json);

  @JsonKey(name: 'ebmz_salbar_id')
  int ebmzSalbarId;

  @JsonKey(name: 'hh_asuudal_too')
  int hhAsuudalToo;

  int id;

  @JsonKey(name: 'jil_id')
  int jilId;

  @JsonKey(name: 'ds_sub_bu')
  List<PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubBu>
      dsSubBu;

  @JsonKey(name: 'ds_sub_gt')
  List<PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubGt>
      dsSubGt;

  @JsonKey(name: 'ds_sub_noots')
  List<PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubNoots>
      dsSubNoots;

  @JsonKey(name: 'ds_sub_tezu')
  List<PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubTezu>
      dsSubTezu;

  @JsonKey(name: 'ds_sub_uhggsa')
  List<PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol$DsSubUhggsa>
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
      _$PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlolToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateebMergejilZovlol$Query$Paginate with EquatableMixin {
  PaginateebMergejilZovlol$Query$Paginate();

  factory PaginateebMergejilZovlol$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateebMergejilZovlol$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'aa_e_b_mergejil_zovlol')
  List<PaginateebMergejilZovlol$Query$Paginate$AaEBMergejilZovlol>
      aaEBMergejilZovlol;

  @override
  List<Object> get props => [total, lastPage, aaEBMergejilZovlol];
  Map<String, dynamic> toJson() =>
      _$PaginateebMergejilZovlol$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateebMergejilZovlol$Query with EquatableMixin {
  PaginateebMergejilZovlol$Query();

  factory PaginateebMergejilZovlol$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginateebMergejilZovlol$QueryFromJson(json);

  PaginateebMergejilZovlol$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginateebMergejilZovlol$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateajilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel
    with EquatableMixin {
  PaginateajilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel();

  factory PaginateajilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateajilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelelFromJson(
          json);

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
      _$PaginateajilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelelToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class PaginateajilahHuchMedeelel$Query$Paginate with EquatableMixin {
  PaginateajilahHuchMedeelel$Query$Paginate();

  factory PaginateajilahHuchMedeelel$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateajilahHuchMedeelel$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_ajilah_huch_medeelel')
  List<PaginateajilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel>
      dsAjilahHuchMedeelel;

  @override
  List<Object> get props => [total, lastPage, dsAjilahHuchMedeelel];
  Map<String, dynamic> toJson() =>
      _$PaginateajilahHuchMedeelel$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateajilahHuchMedeelel$Query with EquatableMixin {
  PaginateajilahHuchMedeelel$Query();

  factory PaginateajilahHuchMedeelel$Query.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateajilahHuchMedeelel$QueryFromJson(json);

  PaginateajilahHuchMedeelel$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() =>
      _$PaginateajilahHuchMedeelel$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatetusgaiZuvshuurulArguments extends JsonSerializable
    with EquatableMixin {
  PaginatetusgaiZuvshuurulArguments({@required this.page, @required this.size});

  @override
  factory PaginatetusgaiZuvshuurulArguments.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatetusgaiZuvshuurulArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() =>
      _$PaginatetusgaiZuvshuurulArgumentsToJson(this);
}

class PaginatetusgaiZuvshuurulQuery extends GraphQLQuery<
    PaginatetusgaiZuvshuurul$Query, PaginatetusgaiZuvshuurulArguments> {
  PaginatetusgaiZuvshuurulQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginatetusgai_zuvshuurul'),
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
  final String operationName = 'paginatetusgai_zuvshuurul';

  @override
  final PaginatetusgaiZuvshuurulArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginatetusgaiZuvshuurul$Query parse(Map<String, dynamic> json) =>
      PaginatetusgaiZuvshuurul$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginatesongonShalgaruulaltArguments extends JsonSerializable
    with EquatableMixin {
  PaginatesongonShalgaruulaltArguments(
      {@required this.page, @required this.size});

  @override
  factory PaginatesongonShalgaruulaltArguments.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatesongonShalgaruulaltArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() =>
      _$PaginatesongonShalgaruulaltArgumentsToJson(this);
}

class PaginatesongonShalgaruulaltQuery extends GraphQLQuery<
    PaginatesongonShalgaruulalt$Query, PaginatesongonShalgaruulaltArguments> {
  PaginatesongonShalgaruulaltQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginatesongon_shalgaruulalt'),
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
  final String operationName = 'paginatesongon_shalgaruulalt';

  @override
  final PaginatesongonShalgaruulaltArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginatesongonShalgaruulalt$Query parse(Map<String, dynamic> json) =>
      PaginatesongonShalgaruulalt$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginateebMergejilZovlolArguments extends JsonSerializable
    with EquatableMixin {
  PaginateebMergejilZovlolArguments({@required this.page, @required this.size});

  @override
  factory PaginateebMergejilZovlolArguments.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateebMergejilZovlolArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() =>
      _$PaginateebMergejilZovlolArgumentsToJson(this);
}

class PaginateebMergejilZovlolQuery extends GraphQLQuery<
    PaginateebMergejilZovlol$Query, PaginateebMergejilZovlolArguments> {
  PaginateebMergejilZovlolQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginateeb_mergejil_zovlol'),
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
                                name: NameNode(value: 'tolov_id'),
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
                                name: NameNode(value: 'tolov_id'),
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
                                name: NameNode(value: 'tolov_id'),
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
                                name: NameNode(value: 'tolov_id'),
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
  final String operationName = 'paginateeb_mergejil_zovlol';

  @override
  final PaginateebMergejilZovlolArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginateebMergejilZovlol$Query parse(Map<String, dynamic> json) =>
      PaginateebMergejilZovlol$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginateajilahHuchMedeelelArguments extends JsonSerializable
    with EquatableMixin {
  PaginateajilahHuchMedeelelArguments(
      {@required this.page, @required this.size});

  @override
  factory PaginateajilahHuchMedeelelArguments.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateajilahHuchMedeelelArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() =>
      _$PaginateajilahHuchMedeelelArgumentsToJson(this);
}

class PaginateajilahHuchMedeelelQuery extends GraphQLQuery<
    PaginateajilahHuchMedeelel$Query, PaginateajilahHuchMedeelelArguments> {
  PaginateajilahHuchMedeelelQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginateajilah_huch_medeelel'),
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
  final String operationName = 'paginateajilah_huch_medeelel';

  @override
  final PaginateajilahHuchMedeelelArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginateajilahHuchMedeelel$Query parse(Map<String, dynamic> json) =>
      PaginateajilahHuchMedeelel$Query.fromJson(json);
}
