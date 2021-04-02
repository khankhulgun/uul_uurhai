// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'statistic_medee.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class ExportMedee$Query$Paginate$DsExportMedee with EquatableMixin {
  ExportMedee$Query$Paginate$DsExportMedee();

  factory ExportMedee$Query$Paginate$DsExportMedee.fromJson(
          Map<String, dynamic> json) =>
      _$ExportMedee$Query$Paginate$DsExportMedeeFromJson(json);

  @JsonKey(name: 'a_heregsel')
  String aHeregsel;

  @JsonKey(name: 'b_id')
  int bId;

  @JsonKey(name: 'b_torol_id')
  int bTorolId;

  String boomt;

  @JsonKey(name: 'boomt_id')
  int boomtId;

  @JsonKey(name: 'boomt_short')
  String boomtShort;

  String buteegdehuun;

  String code;

  @JsonKey(name: 'eh_survalj_id')
  int ehSurvaljId;

  @JsonKey(name: 'exp_une_dun')
  double expUneDun;

  @JsonKey(name: 'export_baiguullaga')
  int exportBaiguullaga;

  @JsonKey(name: 'export_hemjee')
  double exportHemjee;

  @JsonKey(name: 'hemjih_negj_id')
  int hemjihNegjId;

  int id;

  String lbaiguullaga;

  String negj;

  DateTime ognoo;

  String survalj;

  @JsonKey(name: 't_heregsel_id')
  int tHeregselId;

  @JsonKey(name: 'teever_too')
  int teeverToo;

  @JsonKey(name: 'to_tonnes')
  double toTonnes;

  String torol;

  String uls;

  @JsonKey(name: 'uls_id')
  int ulsId;

  @override
  List<Object> get props => [
        aHeregsel,
        bId,
        bTorolId,
        boomt,
        boomtId,
        boomtShort,
        buteegdehuun,
        code,
        ehSurvaljId,
        expUneDun,
        exportBaiguullaga,
        exportHemjee,
        hemjihNegjId,
        id,
        lbaiguullaga,
        negj,
        ognoo,
        survalj,
        tHeregselId,
        teeverToo,
        toTonnes,
        torol,
        uls,
        ulsId
      ];
  Map<String, dynamic> toJson() =>
      _$ExportMedee$Query$Paginate$DsExportMedeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExportMedee$Query$Paginate with EquatableMixin {
  ExportMedee$Query$Paginate();

  factory ExportMedee$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$ExportMedee$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_export_medee')
  List<ExportMedee$Query$Paginate$DsExportMedee> dsExportMedee;

  @override
  List<Object> get props => [total, lastPage, dsExportMedee];
  Map<String, dynamic> toJson() => _$ExportMedee$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExportMedee$Query with EquatableMixin {
  ExportMedee$Query();

  factory ExportMedee$Query.fromJson(Map<String, dynamic> json) =>
      _$ExportMedee$QueryFromJson(json);

  ExportMedee$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$ExportMedee$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OlborloltMedee$Query$Paginate$DsOlborloltMedee with EquatableMixin {
  OlborloltMedee$Query$Paginate$DsOlborloltMedee();

  factory OlborloltMedee$Query$Paginate$DsOlborloltMedee.fromJson(
          Map<String, dynamic> json) =>
      _$OlborloltMedee$Query$Paginate$DsOlborloltMedeeFromJson(json);

  @JsonKey(name: 'b_id')
  int bId;

  @JsonKey(name: 'b_torol_id')
  int bTorolId;

  String buteegdehuun;

  String code;

  @JsonKey(name: 'eh_survalj_id')
  int ehSurvaljId;

  @JsonKey(name: 'hemjih_negj_id')
  int hemjihNegjId;

  int id;

  String lbaiguullaga;

  String negj;

  DateTime ognoo;

  @JsonKey(name: 'olborlolt_b_id')
  int olborloltBId;

  @JsonKey(name: 'olborlolt_hemjee')
  double olborloltHemjee;

  @JsonKey(name: 'to_tonnes')
  double toTonnes;

  @override
  List<Object> get props => [
        bId,
        bTorolId,
        buteegdehuun,
        code,
        ehSurvaljId,
        hemjihNegjId,
        id,
        lbaiguullaga,
        negj,
        ognoo,
        olborloltBId,
        olborloltHemjee,
        toTonnes
      ];
  Map<String, dynamic> toJson() =>
      _$OlborloltMedee$Query$Paginate$DsOlborloltMedeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OlborloltMedee$Query$Paginate with EquatableMixin {
  OlborloltMedee$Query$Paginate();

  factory OlborloltMedee$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$OlborloltMedee$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_olborlolt_medee')
  List<OlborloltMedee$Query$Paginate$DsOlborloltMedee> dsOlborloltMedee;

  @override
  List<Object> get props => [total, lastPage, dsOlborloltMedee];
  Map<String, dynamic> toJson() => _$OlborloltMedee$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OlborloltMedee$Query with EquatableMixin {
  OlborloltMedee$Query();

  factory OlborloltMedee$Query.fromJson(Map<String, dynamic> json) =>
      _$OlborloltMedee$QueryFromJson(json);

  OlborloltMedee$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$OlborloltMedee$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvalt
    with EquatableMixin {
  MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvalt();

  factory MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvalt.fromJson(
          Map<String, dynamic> json) =>
      _$MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvaltFromJson(json);

  @JsonKey(name: 'a_maltlam_id')
  int aMaltlamId;

  @JsonKey(name: 'ashigt_maltmal')
  String ashigtMaltmal;

  @JsonKey(name: 'eh_survalj_id')
  int ehSurvaljId;

  @JsonKey(name: 'h_avsan_hemjee')
  double hAvsanHemjee;

  @JsonKey(name: 'hemjih_negj_id')
  int hemjihNegjId;

  int id;

  String negj;

  DateTime ognoo;

  String survalj;

  double une;

  @override
  List<Object> get props => [
        aMaltlamId,
        ashigtMaltmal,
        ehSurvaljId,
        hAvsanHemjee,
        hemjihNegjId,
        id,
        negj,
        ognoo,
        survalj,
        une
      ];
  Map<String, dynamic> toJson() =>
      _$MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvaltToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MBankHudaldanAvalt$Query$Paginate with EquatableMixin {
  MBankHudaldanAvalt$Query$Paginate();

  factory MBankHudaldanAvalt$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$MBankHudaldanAvalt$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_m_bank_hudaldan_avalt')
  List<MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvalt>
      dsMBankHudaldanAvalt;

  @override
  List<Object> get props => [total, lastPage, dsMBankHudaldanAvalt];
  Map<String, dynamic> toJson() =>
      _$MBankHudaldanAvalt$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MBankHudaldanAvalt$Query with EquatableMixin {
  MBankHudaldanAvalt$Query();

  factory MBankHudaldanAvalt$Query.fromJson(Map<String, dynamic> json) =>
      _$MBankHudaldanAvalt$QueryFromJson(json);

  MBankHudaldanAvalt$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$MBankHudaldanAvalt$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TaamagUne$Query$Paginate$DsTaamagUne with EquatableMixin {
  TaamagUne$Query$Paginate$DsTaamagUne();

  factory TaamagUne$Query$Paginate$DsTaamagUne.fromJson(
          Map<String, dynamic> json) =>
      _$TaamagUne$Query$Paginate$DsTaamagUneFromJson(json);

  @JsonKey(name: 'ashigt_m_id')
  int ashigtMId;

  @JsonKey(name: 'ashigt_maltmal')
  String ashigtMaltmal;

  @JsonKey(name: 'dollar_tn')
  double dollarTn;

  @JsonKey(name: 'eh_survalj_id')
  int ehSurvaljId;

  @JsonKey(name: 'h_negj_id')
  int hNegjId;

  int id;

  String jil;

  String negj;

  DateTime ognoo;

  @JsonKey(name: 'on_id')
  int onId;

  String sar;

  @JsonKey(name: 'sar_id')
  int sarId;

  String survalj;

  String valiut;

  @JsonKey(name: 'valiut_id')
  int valiutId;

  @override
  List<Object> get props => [
        ashigtMId,
        ashigtMaltmal,
        dollarTn,
        ehSurvaljId,
        hNegjId,
        id,
        jil,
        negj,
        ognoo,
        onId,
        sar,
        sarId,
        survalj,
        valiut,
        valiutId
      ];
  Map<String, dynamic> toJson() =>
      _$TaamagUne$Query$Paginate$DsTaamagUneToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TaamagUne$Query$Paginate with EquatableMixin {
  TaamagUne$Query$Paginate();

  factory TaamagUne$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$TaamagUne$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_taamag_une')
  List<TaamagUne$Query$Paginate$DsTaamagUne> dsTaamagUne;

  @override
  List<Object> get props => [total, lastPage, dsTaamagUne];
  Map<String, dynamic> toJson() => _$TaamagUne$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TaamagUne$Query with EquatableMixin {
  TaamagUne$Query();

  factory TaamagUne$Query.fromJson(Map<String, dynamic> json) =>
      _$TaamagUne$QueryFromJson(json);

  TaamagUne$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$TaamagUne$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ExportMedeeArguments extends JsonSerializable with EquatableMixin {
  ExportMedeeArguments({@required this.page, @required this.size});

  @override
  factory ExportMedeeArguments.fromJson(Map<String, dynamic> json) =>
      _$ExportMedeeArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$ExportMedeeArgumentsToJson(this);
}

class ExportMedeeQuery
    extends GraphQLQuery<ExportMedee$Query, ExportMedeeArguments> {
  ExportMedeeQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'export_medee'),
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
                    name: NameNode(value: 'ds_export_medee'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'a_heregsel'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'b_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'b_torol_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'boomt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'boomt_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'boomt_short'),
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
                          name: NameNode(value: 'code'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'eh_survalj_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'exp_une_dun'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'export_baiguullaga'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'export_hemjee'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hemjih_negj_id'),
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
                          name: NameNode(value: 'lbaiguullaga'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'negj'),
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
                          name: NameNode(value: 'survalj'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 't_heregsel_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'teever_too'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'to_tonnes'),
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
  final String operationName = 'export_medee';

  @override
  final ExportMedeeArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ExportMedee$Query parse(Map<String, dynamic> json) =>
      ExportMedee$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class OlborloltMedeeArguments extends JsonSerializable with EquatableMixin {
  OlborloltMedeeArguments({@required this.page, @required this.size});

  @override
  factory OlborloltMedeeArguments.fromJson(Map<String, dynamic> json) =>
      _$OlborloltMedeeArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$OlborloltMedeeArgumentsToJson(this);
}

class OlborloltMedeeQuery
    extends GraphQLQuery<OlborloltMedee$Query, OlborloltMedeeArguments> {
  OlborloltMedeeQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'olborlolt_medee'),
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
                    name: NameNode(value: 'ds_olborlolt_medee'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'b_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'b_torol_id'),
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
                          name: NameNode(value: 'code'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'eh_survalj_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hemjih_negj_id'),
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
                          name: NameNode(value: 'lbaiguullaga'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'negj'),
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
                          name: NameNode(value: 'olborlolt_b_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'olborlolt_hemjee'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'to_tonnes'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'olborlolt_medee';

  @override
  final OlborloltMedeeArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  OlborloltMedee$Query parse(Map<String, dynamic> json) =>
      OlborloltMedee$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class MBankHudaldanAvaltArguments extends JsonSerializable with EquatableMixin {
  MBankHudaldanAvaltArguments({@required this.page, @required this.size});

  @override
  factory MBankHudaldanAvaltArguments.fromJson(Map<String, dynamic> json) =>
      _$MBankHudaldanAvaltArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$MBankHudaldanAvaltArgumentsToJson(this);
}

class MBankHudaldanAvaltQuery extends GraphQLQuery<MBankHudaldanAvalt$Query,
    MBankHudaldanAvaltArguments> {
  MBankHudaldanAvaltQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'm_bank_hudaldan_avalt'),
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
                    name: NameNode(value: 'ds_m_bank_hudaldan_avalt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'a_maltlam_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ashigt_maltmal'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'eh_survalj_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'h_avsan_hemjee'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hemjih_negj_id'),
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
                          name: NameNode(value: 'negj'),
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
                          name: NameNode(value: 'survalj'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'une'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'm_bank_hudaldan_avalt';

  @override
  final MBankHudaldanAvaltArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  MBankHudaldanAvalt$Query parse(Map<String, dynamic> json) =>
      MBankHudaldanAvalt$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class TaamagUneArguments extends JsonSerializable with EquatableMixin {
  TaamagUneArguments({@required this.page, @required this.size});

  @override
  factory TaamagUneArguments.fromJson(Map<String, dynamic> json) =>
      _$TaamagUneArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$TaamagUneArgumentsToJson(this);
}

class TaamagUneQuery extends GraphQLQuery<TaamagUne$Query, TaamagUneArguments> {
  TaamagUneQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'taamag_une'),
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
                    name: NameNode(value: 'ds_taamag_une'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'ashigt_m_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ashigt_maltmal'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'dollar_tn'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'eh_survalj_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'h_negj_id'),
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
                          name: NameNode(value: 'negj'),
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
                          name: NameNode(value: 'on_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sar'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sar_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'survalj'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'valiut'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'valiut_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'taamag_une';

  @override
  final TaamagUneArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  TaamagUne$Query parse(Map<String, dynamic> json) =>
      TaamagUne$Query.fromJson(json);
}
