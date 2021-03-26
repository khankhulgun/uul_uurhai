// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'zg_hotolbor.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor$SubHotolborUzuulelt
    with EquatableMixin {
  Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor$SubHotolborUzuulelt();

  factory Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor$SubHotolborUzuulelt.fromJson(
          Map<String, dynamic> json) =>
      _$Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor$SubHotolborUzuuleltFromJson(
          json);

  @JsonKey(name: 'h_tuvshin')
  String hTuvshin;

  double heregjilt;

  @JsonKey(name: 'heregjilt_tailan')
  String heregjiltTailan;

  @JsonKey(name: 'hotolbor_id')
  int hotolborId;

  int id;

  @JsonKey(name: 'jil_id')
  int jilId;

  double tosov;

  @override
  List<Object> get props =>
      [hTuvshin, heregjilt, heregjiltTailan, hotolborId, id, jilId, tosov];
  Map<String, dynamic> toJson() =>
      _$Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor$SubHotolborUzuuleltToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor with EquatableMixin {
  Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor();

  factory Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor.fromJson(
          Map<String, dynamic> json) =>
      _$Paginatedszhhotolbor$Query$Paginate$DsZgHotolborFromJson(json);

  @JsonKey(name: 'arga_hemjee')
  String argaHemjee;

  @JsonKey(name: 'ded_zorilt')
  String dedZorilt;

  @JsonKey(name: 'e_uusver')
  String eUusver;

  @JsonKey(name: 'h_baiguullaga_id')
  String hBaiguullagaId;

  String hotolbor;

  String hugatsaa;

  int id;

  @JsonKey(name: 'niit_tosov')
  double niitTosov;

  String status;

  @JsonKey(name: 'suuri_tuvshin')
  String suuriTuvshin;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  String zorilt;

  @JsonKey(name: 'sub_hotolbor_uzuulelt')
  List<Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor$SubHotolborUzuulelt>
      subHotolborUzuulelt;

  @override
  List<Object> get props => [
        argaHemjee,
        dedZorilt,
        eUusver,
        hBaiguullagaId,
        hotolbor,
        hugatsaa,
        id,
        niitTosov,
        status,
        suuriTuvshin,
        tolovId,
        zorilt,
        subHotolborUzuulelt
      ];
  Map<String, dynamic> toJson() =>
      _$Paginatedszhhotolbor$Query$Paginate$DsZgHotolborToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paginatedszhhotolbor$Query$Paginate with EquatableMixin {
  Paginatedszhhotolbor$Query$Paginate();

  factory Paginatedszhhotolbor$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$Paginatedszhhotolbor$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_zg_hotolbor')
  List<Paginatedszhhotolbor$Query$Paginate$DsZgHotolbor> dsZgHotolbor;

  @override
  List<Object> get props => [total, lastPage, dsZgHotolbor];
  Map<String, dynamic> toJson() =>
      _$Paginatedszhhotolbor$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paginatedszhhotolbor$Query with EquatableMixin {
  Paginatedszhhotolbor$Query();

  factory Paginatedszhhotolbor$Query.fromJson(Map<String, dynamic> json) =>
      _$Paginatedszhhotolbor$QueryFromJson(json);

  Paginatedszhhotolbor$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$Paginatedszhhotolbor$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatedszhhotolborArguments extends JsonSerializable
    with EquatableMixin {
  PaginatedszhhotolborArguments({@required this.page, @required this.size});

  @override
  factory PaginatedszhhotolborArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginatedszhhotolborArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginatedszhhotolborArgumentsToJson(this);
}

class PaginatedszhhotolborQuery extends GraphQLQuery<Paginatedszhhotolbor$Query,
    PaginatedszhhotolborArguments> {
  PaginatedszhhotolborQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginatedszhhotolbor'),
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
                    name: NameNode(value: 'ds_zg_hotolbor'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'arga_hemjee'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'ded_zorilt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'e_uusver'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'h_baiguullaga_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'hotolbor'),
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
                          name: NameNode(value: 'niit_tosov'),
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
                          name: NameNode(value: 'suuri_tuvshin'),
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
                          name: NameNode(value: 'zorilt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'sub_hotolbor_uzuulelt'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'h_tuvshin'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'heregjilt'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'heregjilt_tailan'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'hotolbor_id'),
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
                                name: NameNode(value: 'tosov'),
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
  final String operationName = 'paginatedszhhotolbor';

  @override
  final PaginatedszhhotolborArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Paginatedszhhotolbor$Query parse(Map<String, dynamic> json) =>
      Paginatedszhhotolbor$Query.fromJson(json);
}
