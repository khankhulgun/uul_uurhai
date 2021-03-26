// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'statistic_medee.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class PaginateduremJuram$Query$Paginate$DsExportMedee with EquatableMixin {
  PaginateduremJuram$Query$Paginate$DsExportMedee();

  factory PaginateduremJuram$Query$Paginate$DsExportMedee.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateduremJuram$Query$Paginate$DsExportMedeeFromJson(json);

  @JsonKey(name: 'a_heregsel')
  String aHeregsel;

  @JsonKey(name: 'b_id')
  int bId;

  @JsonKey(name: 'b_torol_id')
  int bTorolId;

  String boomt;

  @JsonKey(name: 'boomt_id')
  int boomtId;

  String buteegdehuun;

  String code;

  @JsonKey(name: 'eh_survalj_id')
  int ehSurvaljId;

  @JsonKey(name: 'exp_une_dun')
  double expUneDun;

  @JsonKey(name: 'export_baiguullaga')
  String exportBaiguullaga;

  @JsonKey(name: 'export_hemjee')
  double exportHemjee;

  @JsonKey(name: 'hemjih_negj_id')
  int hemjihNegjId;

  int id;

  String negj;

  DateTime ognoo;

  String survalj;

  @JsonKey(name: 't_heregsel_id')
  int tHeregselId;

  @JsonKey(name: 'teever_too')
  int teeverToo;

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
        buteegdehuun,
        code,
        ehSurvaljId,
        expUneDun,
        exportBaiguullaga,
        exportHemjee,
        hemjihNegjId,
        id,
        negj,
        ognoo,
        survalj,
        tHeregselId,
        teeverToo,
        uls,
        ulsId
      ];
  Map<String, dynamic> toJson() =>
      _$PaginateduremJuram$Query$Paginate$DsExportMedeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateduremJuram$Query$Paginate with EquatableMixin {
  PaginateduremJuram$Query$Paginate();

  factory PaginateduremJuram$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateduremJuram$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_export_medee')
  List<PaginateduremJuram$Query$Paginate$DsExportMedee> dsExportMedee;

  @override
  List<Object> get props => [total, lastPage, dsExportMedee];
  Map<String, dynamic> toJson() =>
      _$PaginateduremJuram$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateduremJuram$Query with EquatableMixin {
  PaginateduremJuram$Query();

  factory PaginateduremJuram$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginateduremJuram$QueryFromJson(json);

  PaginateduremJuram$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginateduremJuram$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateolborloltMedee$Query$Paginate$DsOlborloltMedee
    with EquatableMixin {
  PaginateolborloltMedee$Query$Paginate$DsOlborloltMedee();

  factory PaginateolborloltMedee$Query$Paginate$DsOlborloltMedee.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateolborloltMedee$Query$Paginate$DsOlborloltMedeeFromJson(json);

  @JsonKey(name: 'b_id')
  int bId;

  @JsonKey(name: 'b_torol_id')
  int bTorolId;

  String buteegdehuun;

  @JsonKey(name: 'eh_survalj_id')
  int ehSurvaljId;

  @JsonKey(name: 'hemjih_negj_id')
  int hemjihNegjId;

  int id;

  String negj;

  DateTime ognoo;

  @JsonKey(name: 'olborlolt_b_id')
  int olborloltBId;

  @JsonKey(name: 'olborlolt_hemjee')
  double olborloltHemjee;

  @override
  List<Object> get props => [
        bId,
        bTorolId,
        buteegdehuun,
        ehSurvaljId,
        hemjihNegjId,
        id,
        negj,
        ognoo,
        olborloltBId,
        olborloltHemjee
      ];
  Map<String, dynamic> toJson() =>
      _$PaginateolborloltMedee$Query$Paginate$DsOlborloltMedeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateolborloltMedee$Query$Paginate with EquatableMixin {
  PaginateolborloltMedee$Query$Paginate();

  factory PaginateolborloltMedee$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateolborloltMedee$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_olborlolt_medee')
  List<PaginateolborloltMedee$Query$Paginate$DsOlborloltMedee> dsOlborloltMedee;

  @override
  List<Object> get props => [total, lastPage, dsOlborloltMedee];
  Map<String, dynamic> toJson() =>
      _$PaginateolborloltMedee$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateolborloltMedee$Query with EquatableMixin {
  PaginateolborloltMedee$Query();

  factory PaginateolborloltMedee$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginateolborloltMedee$QueryFromJson(json);

  PaginateolborloltMedee$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginateolborloltMedee$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatembanlHudAvalt$Query$Paginate$DsMBankHudaldanAvalt
    with EquatableMixin {
  PaginatembanlHudAvalt$Query$Paginate$DsMBankHudaldanAvalt();

  factory PaginatembanlHudAvalt$Query$Paginate$DsMBankHudaldanAvalt.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatembanlHudAvalt$Query$Paginate$DsMBankHudaldanAvaltFromJson(json);

  @JsonKey(name: 'a_maltlam_id')
  int aMaltlamId;

  String buteegdehuun;

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
        buteegdehuun,
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
      _$PaginatembanlHudAvalt$Query$Paginate$DsMBankHudaldanAvaltToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatembanlHudAvalt$Query$Paginate with EquatableMixin {
  PaginatembanlHudAvalt$Query$Paginate();

  factory PaginatembanlHudAvalt$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatembanlHudAvalt$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_m_bank_hudaldan_avalt')
  List<PaginatembanlHudAvalt$Query$Paginate$DsMBankHudaldanAvalt>
      dsMBankHudaldanAvalt;

  @override
  List<Object> get props => [total, lastPage, dsMBankHudaldanAvalt];
  Map<String, dynamic> toJson() =>
      _$PaginatembanlHudAvalt$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatembanlHudAvalt$Query with EquatableMixin {
  PaginatembanlHudAvalt$Query();

  factory PaginatembanlHudAvalt$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginatembanlHudAvalt$QueryFromJson(json);

  PaginatembanlHudAvalt$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginatembanlHudAvalt$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatetaamagUne$Query$Paginate$DsTaamagUne with EquatableMixin {
  PaginatetaamagUne$Query$Paginate$DsTaamagUne();

  factory PaginatetaamagUne$Query$Paginate$DsTaamagUne.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatetaamagUne$Query$Paginate$DsTaamagUneFromJson(json);

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
      _$PaginatetaamagUne$Query$Paginate$DsTaamagUneToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatetaamagUne$Query$Paginate with EquatableMixin {
  PaginatetaamagUne$Query$Paginate();

  factory PaginatetaamagUne$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginatetaamagUne$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_taamag_une')
  List<PaginatetaamagUne$Query$Paginate$DsTaamagUne> dsTaamagUne;

  @override
  List<Object> get props => [total, lastPage, dsTaamagUne];
  Map<String, dynamic> toJson() =>
      _$PaginatetaamagUne$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatetaamagUne$Query with EquatableMixin {
  PaginatetaamagUne$Query();

  factory PaginatetaamagUne$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginatetaamagUne$QueryFromJson(json);

  PaginatetaamagUne$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginatetaamagUne$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateduremJuramArguments extends JsonSerializable with EquatableMixin {
  PaginateduremJuramArguments({@required this.page, @required this.size});

  @override
  factory PaginateduremJuramArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginateduremJuramArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginateduremJuramArgumentsToJson(this);
}

class PaginateduremJuramQuery extends GraphQLQuery<PaginateduremJuram$Query,
    PaginateduremJuramArguments> {
  PaginateduremJuramQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginatedurem_juram'),
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
  final String operationName = 'paginatedurem_juram';

  @override
  final PaginateduremJuramArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginateduremJuram$Query parse(Map<String, dynamic> json) =>
      PaginateduremJuram$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginateolborloltMedeeArguments extends JsonSerializable
    with EquatableMixin {
  PaginateolborloltMedeeArguments({@required this.page, @required this.size});

  @override
  factory PaginateolborloltMedeeArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginateolborloltMedeeArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() =>
      _$PaginateolborloltMedeeArgumentsToJson(this);
}

class PaginateolborloltMedeeQuery extends GraphQLQuery<
    PaginateolborloltMedee$Query, PaginateolborloltMedeeArguments> {
  PaginateolborloltMedeeQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginateolborlolt_medee'),
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
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'paginateolborlolt_medee';

  @override
  final PaginateolborloltMedeeArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginateolborloltMedee$Query parse(Map<String, dynamic> json) =>
      PaginateolborloltMedee$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginatembanlHudAvaltArguments extends JsonSerializable
    with EquatableMixin {
  PaginatembanlHudAvaltArguments({@required this.page, @required this.size});

  @override
  factory PaginatembanlHudAvaltArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginatembanlHudAvaltArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginatembanlHudAvaltArgumentsToJson(this);
}

class PaginatembanlHudAvaltQuery extends GraphQLQuery<
    PaginatembanlHudAvalt$Query, PaginatembanlHudAvaltArguments> {
  PaginatembanlHudAvaltQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginatembanl_hud_avalt'),
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
                          name: NameNode(value: 'buteegdehuun'),
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
  final String operationName = 'paginatembanl_hud_avalt';

  @override
  final PaginatembanlHudAvaltArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginatembanlHudAvalt$Query parse(Map<String, dynamic> json) =>
      PaginatembanlHudAvalt$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PaginatetaamagUneArguments extends JsonSerializable with EquatableMixin {
  PaginatetaamagUneArguments({@required this.page, @required this.size});

  @override
  factory PaginatetaamagUneArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginatetaamagUneArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginatetaamagUneArgumentsToJson(this);
}

class PaginatetaamagUneQuery
    extends GraphQLQuery<PaginatetaamagUne$Query, PaginatetaamagUneArguments> {
  PaginatetaamagUneQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginatetaamag_une'),
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
  final String operationName = 'paginatetaamag_une';

  @override
  final PaginatetaamagUneArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginatetaamagUne$Query parse(Map<String, dynamic> json) =>
      PaginatetaamagUne$Query.fromJson(json);
}
