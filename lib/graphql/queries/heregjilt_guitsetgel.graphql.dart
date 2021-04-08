// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'heregjilt_guitsetgel.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichig
    with EquatableMixin {
  BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichig();

  factory BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichig.fromJson(
          Map<String, dynamic> json) =>
      _$BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichigFromJson(
          json);

  @JsonKey(name: 'heregjilt_id')
  int heregjiltId;

  int id;

  String ognoo;

  String salbar;

  @JsonKey(name: 'salbar_id')
  int salbarId;

  String shat;

  @JsonKey(name: 'table_id')
  int tableId;

  String tailan;

  @override
  List<Object> get props =>
      [heregjiltId, id, ognoo, salbar, salbarId, shat, tableId, tailan];
  Map<String, dynamic> toJson() =>
      _$BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichigToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class BodlogoBb$Query$Paginate$DsBodlogoBb with EquatableMixin {
  BodlogoBb$Query$Paginate$DsBodlogoBb();

  factory BodlogoBb$Query$Paginate$DsBodlogoBb.fromJson(
          Map<String, dynamic> json) =>
      _$BodlogoBb$Query$Paginate$DsBodlogoBbFromJson(json);

  @JsonKey(name: 'b_gazar_id')
  int bGazarId;

  @JsonKey(name: 'g_huvi')
  double gHuvi;

  int id;

  String ner;

  @JsonKey(name: 't_hugatsaa')
  String tHugatsaa;

  @JsonKey(name: 't_hugatsaa_id')
  int tHugatsaaId;

  @JsonKey(name: 'ds_sub_heregjilt_bodlog_barimt_bichig')
  List<BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichig>
      dsSubHeregjiltBodlogBarimtBichig;

  @override
  List<Object> get props => [
        bGazarId,
        gHuvi,
        id,
        ner,
        tHugatsaa,
        tHugatsaaId,
        dsSubHeregjiltBodlogBarimtBichig
      ];
  Map<String, dynamic> toJson() =>
      _$BodlogoBb$Query$Paginate$DsBodlogoBbToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BodlogoBb$Query$Paginate with EquatableMixin {
  BodlogoBb$Query$Paginate();

  factory BodlogoBb$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$BodlogoBb$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_bodlogo_bb')
  List<BodlogoBb$Query$Paginate$DsBodlogoBb> dsBodlogoBb;

  @override
  List<Object> get props => [total, lastPage, dsBodlogoBb];
  Map<String, dynamic> toJson() => _$BodlogoBb$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BodlogoBb$Query with EquatableMixin {
  BodlogoBb$Query();

  factory BodlogoBb$Query.fromJson(Map<String, dynamic> json) =>
      _$BodlogoBb$QueryFromJson(json);

  BodlogoBb$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$BodlogoBb$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MuHuuliHegejilt$Query$Paginate$DsMongolUlsHuuliHer$DsSubHeregjilt
    with EquatableMixin {
  MuHuuliHegejilt$Query$Paginate$DsMongolUlsHuuliHer$DsSubHeregjilt();

  factory MuHuuliHegejilt$Query$Paginate$DsMongolUlsHuuliHer$DsSubHeregjilt.fromJson(
          Map<String, dynamic> json) =>
      _$MuHuuliHegejilt$Query$Paginate$DsMongolUlsHuuliHer$DsSubHeregjiltFromJson(
          json);

  @JsonKey(name: 'heregjilt_id')
  int heregjiltId;

  int id;

  String ognoo;

  String salbar;

  @JsonKey(name: 'salbar_id')
  int salbarId;

  String shat;

  @JsonKey(name: 'table_id')
  int tableId;

  String tailan;

  @override
  List<Object> get props =>
      [heregjiltId, id, ognoo, salbar, salbarId, shat, tableId, tailan];
  Map<String, dynamic> toJson() =>
      _$MuHuuliHegejilt$Query$Paginate$DsMongolUlsHuuliHer$DsSubHeregjiltToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class MuHuuliHegejilt$Query$Paginate$DsMongolUlsHuuliHer with EquatableMixin {
  MuHuuliHegejilt$Query$Paginate$DsMongolUlsHuuliHer();

  factory MuHuuliHegejilt$Query$Paginate$DsMongolUlsHuuliHer.fromJson(
          Map<String, dynamic> json) =>
      _$MuHuuliHegejilt$Query$Paginate$DsMongolUlsHuuliHerFromJson(json);

  @JsonKey(name: 'g_huvi')
  double gHuvi;

  int id;

  @JsonKey(name: 't_hugatsaa_id')
  int tHugatsaaId;

  String huuli;

  @JsonKey(name: 't_hugatsaa')
  String tHugatsaa;

  @JsonKey(name: 'ds_sub_heregjilt')
  List<MuHuuliHegejilt$Query$Paginate$DsMongolUlsHuuliHer$DsSubHeregjilt>
      dsSubHeregjilt;

  @override
  List<Object> get props =>
      [gHuvi, id, tHugatsaaId, huuli, tHugatsaa, dsSubHeregjilt];
  Map<String, dynamic> toJson() =>
      _$MuHuuliHegejilt$Query$Paginate$DsMongolUlsHuuliHerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MuHuuliHegejilt$Query$Paginate with EquatableMixin {
  MuHuuliHegejilt$Query$Paginate();

  factory MuHuuliHegejilt$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$MuHuuliHegejilt$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_mongol_uls_huuli_her')
  List<MuHuuliHegejilt$Query$Paginate$DsMongolUlsHuuliHer> dsMongolUlsHuuliHer;

  @override
  List<Object> get props => [total, lastPage, dsMongolUlsHuuliHer];
  Map<String, dynamic> toJson() => _$MuHuuliHegejilt$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MuHuuliHegejilt$Query with EquatableMixin {
  MuHuuliHegejilt$Query();

  factory MuHuuliHegejilt$Query.fromJson(Map<String, dynamic> json) =>
      _$MuHuuliHegejilt$QueryFromJson(json);

  MuHuuliHegejilt$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$MuHuuliHegejilt$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt$DsSubHeregjiltUlsIhHural
    with EquatableMixin {
  UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt$DsSubHeregjiltUlsIhHural();

  factory UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt$DsSubHeregjiltUlsIhHural.fromJson(
          Map<String, dynamic> json) =>
      _$UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt$DsSubHeregjiltUlsIhHuralFromJson(
          json);

  @JsonKey(name: 'heregjilt_id')
  int heregjiltId;

  int id;

  String ognoo;

  String salbar;

  @JsonKey(name: 'salbar_id')
  int salbarId;

  String shat;

  @JsonKey(name: 'table_id')
  int tableId;

  String tailan;

  @override
  List<Object> get props =>
      [heregjiltId, id, ognoo, salbar, salbarId, shat, tableId, tailan];
  Map<String, dynamic> toJson() =>
      _$UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt$DsSubHeregjiltUlsIhHuralToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt
    with EquatableMixin {
  UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt();

  factory UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt.fromJson(
          Map<String, dynamic> json) =>
      _$UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjiltFromJson(json);

  @JsonKey(name: 'g_huvi')
  double gHuvi;

  int id;

  @JsonKey(name: 't_hugatsaa')
  String tHugatsaa;

  @JsonKey(name: 't_hugatsaa_id')
  int tHugatsaaId;

  String togtool;

  @JsonKey(name: 'togtool_id')
  int togtoolId;

  @JsonKey(name: 'ds_sub_heregjilt_uls_ih_hural')
  List<UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt$DsSubHeregjiltUlsIhHural>
      dsSubHeregjiltUlsIhHural;

  @override
  List<Object> get props => [
        gHuvi,
        id,
        tHugatsaa,
        tHugatsaaId,
        togtool,
        togtoolId,
        dsSubHeregjiltUlsIhHural
      ];
  Map<String, dynamic> toJson() =>
      _$UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjiltToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UihTogtoolHeregjilt$Query$Paginate with EquatableMixin {
  UihTogtoolHeregjilt$Query$Paginate();

  factory UihTogtoolHeregjilt$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$UihTogtoolHeregjilt$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_uih_togtool_heregjilt')
  List<UihTogtoolHeregjilt$Query$Paginate$DsUihTogtoolHeregjilt>
      dsUihTogtoolHeregjilt;

  @override
  List<Object> get props => [total, lastPage, dsUihTogtoolHeregjilt];
  Map<String, dynamic> toJson() =>
      _$UihTogtoolHeregjilt$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UihTogtoolHeregjilt$Query with EquatableMixin {
  UihTogtoolHeregjilt$Query();

  factory UihTogtoolHeregjilt$Query.fromJson(Map<String, dynamic> json) =>
      _$UihTogtoolHeregjilt$QueryFromJson(json);

  UihTogtoolHeregjilt$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$UihTogtoolHeregjilt$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt$DsSubHeregjiltZgTogtool
    with EquatableMixin {
  ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt$DsSubHeregjiltZgTogtool();

  factory ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt$DsSubHeregjiltZgTogtool.fromJson(
          Map<String, dynamic> json) =>
      _$ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt$DsSubHeregjiltZgTogtoolFromJson(
          json);

  @JsonKey(name: 'heregjilt_id')
  int heregjiltId;

  int id;

  String ognoo;

  String salbar;

  @JsonKey(name: 'salbar_id')
  int salbarId;

  String shat;

  @JsonKey(name: 'table_id')
  int tableId;

  String tailan;

  @override
  List<Object> get props =>
      [heregjiltId, id, ognoo, salbar, salbarId, shat, tableId, tailan];
  Map<String, dynamic> toJson() =>
      _$ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt$DsSubHeregjiltZgTogtoolToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt
    with EquatableMixin {
  ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt();

  factory ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt.fromJson(
          Map<String, dynamic> json) =>
      _$ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjiltFromJson(json);

  @JsonKey(name: 'g_huvi')
  double gHuvi;

  int id;

  @JsonKey(name: 't_hugatsaa')
  String tHugatsaa;

  @JsonKey(name: 't_hugatsaa_id')
  int tHugatsaaId;

  String togtool;

  @JsonKey(name: 'zg_togtool_id')
  int zgTogtoolId;

  @JsonKey(name: 'ds_sub_heregjilt_zg_togtool')
  List<ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt$DsSubHeregjiltZgTogtool>
      dsSubHeregjiltZgTogtool;

  @override
  List<Object> get props => [
        gHuvi,
        id,
        tHugatsaa,
        tHugatsaaId,
        togtool,
        zgTogtoolId,
        dsSubHeregjiltZgTogtool
      ];
  Map<String, dynamic> toJson() =>
      _$ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjiltToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ZgTogtoolHeregjilt$Query$Paginate with EquatableMixin {
  ZgTogtoolHeregjilt$Query$Paginate();

  factory ZgTogtoolHeregjilt$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$ZgTogtoolHeregjilt$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_zg_togtool_heregjilt')
  List<ZgTogtoolHeregjilt$Query$Paginate$DsZgTogtoolHeregjilt>
      dsZgTogtoolHeregjilt;

  @override
  List<Object> get props => [total, lastPage, dsZgTogtoolHeregjilt];
  Map<String, dynamic> toJson() =>
      _$ZgTogtoolHeregjilt$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ZgTogtoolHeregjilt$Query with EquatableMixin {
  ZgTogtoolHeregjilt$Query();

  factory ZgTogtoolHeregjilt$Query.fromJson(Map<String, dynamic> json) =>
      _$ZgTogtoolHeregjilt$QueryFromJson(json);

  ZgTogtoolHeregjilt$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$ZgTogtoolHeregjilt$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AjilHeseg$Query$Paginate$DsAjilHeseg with EquatableMixin {
  AjilHeseg$Query$Paginate$DsAjilHeseg();

  factory AjilHeseg$Query$Paginate$DsAjilHeseg.fromJson(
          Map<String, dynamic> json) =>
      _$AjilHeseg$Query$Paginate$DsAjilHesegFromJson(json);

  @JsonKey(name: 'a_heseg_id')
  int aHesegId;

  @JsonKey(name: 'ah_chig_id')
  String ahChigId;

  @JsonKey(name: 'ajil_heseg')
  String ajilHeseg;

  @JsonKey(name: 'b_gazar_id')
  int bGazarId;

  @JsonKey(name: 'g_huvi')
  String gHuvi;

  int id;

  String jil;

  @JsonKey(name: 'jil_id')
  int jilId;

  String salbar;

  String status;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @JsonKey(name: 'tu_dugaar')
  String tuDugaar;

  @JsonKey(name: 'yvnts_ognoo')
  DateTime yvntsOgnoo;

  @JsonKey(name: 'yvts_tailan')
  String yvtsTailan;

  @override
  List<Object> get props => [
        aHesegId,
        ahChigId,
        ajilHeseg,
        bGazarId,
        gHuvi,
        id,
        jil,
        jilId,
        salbar,
        status,
        tolovId,
        tuDugaar,
        yvntsOgnoo,
        yvtsTailan
      ];
  Map<String, dynamic> toJson() =>
      _$AjilHeseg$Query$Paginate$DsAjilHesegToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AjilHeseg$Query$Paginate with EquatableMixin {
  AjilHeseg$Query$Paginate();

  factory AjilHeseg$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$AjilHeseg$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_ajil_heseg')
  List<AjilHeseg$Query$Paginate$DsAjilHeseg> dsAjilHeseg;

  @override
  List<Object> get props => [total, lastPage, dsAjilHeseg];
  Map<String, dynamic> toJson() => _$AjilHeseg$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AjilHeseg$Query with EquatableMixin {
  AjilHeseg$Query();

  factory AjilHeseg$Query.fromJson(Map<String, dynamic> json) =>
      _$AjilHeseg$QueryFromJson(json);

  AjilHeseg$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$AjilHeseg$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTH with EquatableMixin {
  HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTH();

  factory HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTH.fromJson(
          Map<String, dynamic> json) =>
      _$HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTHFromJson(json);

  @JsonKey(name: 'h_baidal')
  String hBaidal;

  @JsonKey(name: 'h_eh_uusver_id')
  int hEhUusverId;

  @JsonKey(name: 'heregjilt_huvi')
  String heregjiltHuvi;

  String heregjuulegch;

  String horongooruulalt;

  String hugatsaa;

  int id;

  @JsonKey(name: 'tosliin_zardal')
  double tosliinZardal;

  @JsonKey(name: 'tosol_ner')
  String tosolNer;

  @JsonKey(name: 'tosovt_ortog')
  double tosovtOrtog;

  @override
  List<Object> get props => [
        hBaidal,
        hEhUusverId,
        heregjiltHuvi,
        heregjuulegch,
        horongooruulalt,
        hugatsaa,
        id,
        tosliinZardal,
        tosolNer,
        tosovtOrtog
      ];
  Map<String, dynamic> toJson() =>
      _$HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTHToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HorongoOruulaltTH$Query$Paginate with EquatableMixin {
  HorongoOruulaltTH$Query$Paginate();

  factory HorongoOruulaltTH$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$HorongoOruulaltTH$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_horongo_oruulalt_t_h')
  List<HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTH>
      dsHorongoOruulaltTH;

  @override
  List<Object> get props => [total, lastPage, dsHorongoOruulaltTH];
  Map<String, dynamic> toJson() =>
      _$HorongoOruulaltTH$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HorongoOruulaltTH$Query with EquatableMixin {
  HorongoOruulaltTH$Query();

  factory HorongoOruulaltTH$Query.fromJson(Map<String, dynamic> json) =>
      _$HorongoOruulaltTH$QueryFromJson(json);

  HorongoOruulaltTH$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$HorongoOruulaltTH$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BodlogoBbArguments extends JsonSerializable with EquatableMixin {
  BodlogoBbArguments({@required this.page, @required this.size});

  @override
  factory BodlogoBbArguments.fromJson(Map<String, dynamic> json) =>
      _$BodlogoBbArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$BodlogoBbArgumentsToJson(this);
}

class BodlogoBbQuery extends GraphQLQuery<BodlogoBb$Query, BodlogoBbArguments> {
  BodlogoBbQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'bodlogo_bb'),
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
                    name: NameNode(value: 'ds_bodlogo_bb'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'b_gazar_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'g_huvi'),
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
                          name: NameNode(value: 'ner'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 't_hugatsaa'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 't_hugatsaa_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(
                              value: 'ds_sub_heregjilt_bodlog_barimt_bichig'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'heregjilt_id'),
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
                                name: NameNode(value: 'ognoo'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'salbar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'salbar_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'shat'),
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
                                name: NameNode(value: 'tailan'),
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
  final String operationName = 'bodlogo_bb';

  @override
  final BodlogoBbArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  BodlogoBb$Query parse(Map<String, dynamic> json) =>
      BodlogoBb$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class MuHuuliHegejiltArguments extends JsonSerializable with EquatableMixin {
  MuHuuliHegejiltArguments({@required this.page, @required this.size});

  @override
  factory MuHuuliHegejiltArguments.fromJson(Map<String, dynamic> json) =>
      _$MuHuuliHegejiltArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$MuHuuliHegejiltArgumentsToJson(this);
}

class MuHuuliHegejiltQuery
    extends GraphQLQuery<MuHuuliHegejilt$Query, MuHuuliHegejiltArguments> {
  MuHuuliHegejiltQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'mu_huuli_hegejilt'),
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
                    name: NameNode(value: 'ds_mongol_uls_huuli_her'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'g_huvi'),
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
                          name: NameNode(value: 't_hugatsaa_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'huuli'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 't_hugatsaa'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_heregjilt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'heregjilt_id'),
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
                                name: NameNode(value: 'ognoo'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'salbar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'salbar_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'shat'),
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
                                name: NameNode(value: 'tailan'),
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
  final String operationName = 'mu_huuli_hegejilt';

  @override
  final MuHuuliHegejiltArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  MuHuuliHegejilt$Query parse(Map<String, dynamic> json) =>
      MuHuuliHegejilt$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UihTogtoolHeregjiltArguments extends JsonSerializable
    with EquatableMixin {
  UihTogtoolHeregjiltArguments({@required this.page, @required this.size});

  @override
  factory UihTogtoolHeregjiltArguments.fromJson(Map<String, dynamic> json) =>
      _$UihTogtoolHeregjiltArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$UihTogtoolHeregjiltArgumentsToJson(this);
}

class UihTogtoolHeregjiltQuery extends GraphQLQuery<UihTogtoolHeregjilt$Query,
    UihTogtoolHeregjiltArguments> {
  UihTogtoolHeregjiltQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'uih_togtool_heregjilt'),
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
                    name: NameNode(value: 'ds_uih_togtool_heregjilt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'g_huvi'),
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
                          name: NameNode(value: 't_hugatsaa'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 't_hugatsaa_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'togtool'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'togtool_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name:
                              NameNode(value: 'ds_sub_heregjilt_uls_ih_hural'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'heregjilt_id'),
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
                                name: NameNode(value: 'ognoo'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'salbar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'salbar_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'shat'),
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
                                name: NameNode(value: 'tailan'),
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
  final String operationName = 'uih_togtool_heregjilt';

  @override
  final UihTogtoolHeregjiltArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  UihTogtoolHeregjilt$Query parse(Map<String, dynamic> json) =>
      UihTogtoolHeregjilt$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ZgTogtoolHeregjiltArguments extends JsonSerializable with EquatableMixin {
  ZgTogtoolHeregjiltArguments({@required this.page, @required this.size});

  @override
  factory ZgTogtoolHeregjiltArguments.fromJson(Map<String, dynamic> json) =>
      _$ZgTogtoolHeregjiltArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$ZgTogtoolHeregjiltArgumentsToJson(this);
}

class ZgTogtoolHeregjiltQuery extends GraphQLQuery<ZgTogtoolHeregjilt$Query,
    ZgTogtoolHeregjiltArguments> {
  ZgTogtoolHeregjiltQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'zg_togtool_heregjilt'),
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
                    name: NameNode(value: 'ds_zg_togtool_heregjilt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'g_huvi'),
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
                          name: NameNode(value: 't_hugatsaa'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 't_hugatsaa_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'togtool'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'zg_togtool_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ds_sub_heregjilt_zg_togtool'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'heregjilt_id'),
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
                                name: NameNode(value: 'ognoo'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'salbar'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'salbar_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'shat'),
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
                                name: NameNode(value: 'tailan'),
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
  final String operationName = 'zg_togtool_heregjilt';

  @override
  final ZgTogtoolHeregjiltArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ZgTogtoolHeregjilt$Query parse(Map<String, dynamic> json) =>
      ZgTogtoolHeregjilt$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AjilHesegArguments extends JsonSerializable with EquatableMixin {
  AjilHesegArguments({@required this.page, @required this.size});

  @override
  factory AjilHesegArguments.fromJson(Map<String, dynamic> json) =>
      _$AjilHesegArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$AjilHesegArgumentsToJson(this);
}

class AjilHesegQuery extends GraphQLQuery<AjilHeseg$Query, AjilHesegArguments> {
  AjilHesegQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ajil_heseg'),
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
                    name: NameNode(value: 'ds_ajil_heseg'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'a_heseg_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ah_chig_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ajil_heseg'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'b_gazar_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'g_huvi'),
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
                          name: NameNode(value: 'salbar'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'status'),
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
                          name: NameNode(value: 'tu_dugaar'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'yvnts_ognoo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'yvts_tailan'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ajil_heseg';

  @override
  final AjilHesegArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  AjilHeseg$Query parse(Map<String, dynamic> json) =>
      AjilHeseg$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class HorongoOruulaltTHArguments extends JsonSerializable with EquatableMixin {
  HorongoOruulaltTHArguments({@required this.page, @required this.size});

  @override
  factory HorongoOruulaltTHArguments.fromJson(Map<String, dynamic> json) =>
      _$HorongoOruulaltTHArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$HorongoOruulaltTHArgumentsToJson(this);
}

class HorongoOruulaltTHQuery
    extends GraphQLQuery<HorongoOruulaltTH$Query, HorongoOruulaltTHArguments> {
  HorongoOruulaltTHQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'horongo_oruulalt_t_h'),
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
                    name: NameNode(value: 'ds_horongo_oruulalt_t_h'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'h_baidal'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'h_eh_uusver_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'heregjilt_huvi'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'heregjuulegch'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'horongooruulalt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hugatsaa'),
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
                          name: NameNode(value: 'tosliin_zardal'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tosol_ner'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tosovt_ortog'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'horongo_oruulalt_t_h';

  @override
  final HorongoOruulaltTHArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  HorongoOruulaltTH$Query parse(Map<String, dynamic> json) =>
      HorongoOruulaltTH$Query.fromJson(json);
}
