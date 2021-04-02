// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'shuurhai_ajil.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil$SubAShuurhaiHeregjilt
    with EquatableMixin {
  ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil$SubAShuurhaiHeregjilt();

  factory ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil$SubAShuurhaiHeregjilt.fromJson(
          Map<String, dynamic> json) =>
      _$ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil$SubAShuurhaiHeregjiltFromJson(
          json);

  @JsonKey(name: 'h_baidal')
  String hBaidal;

  @JsonKey(name: 'h_g_huvi')
  double hGHuvi;

  int id;

  String ognoo;

  @JsonKey(name: 'shuurhai_id')
  int shuurhaiId;

  @override
  List<Object> get props => [hBaidal, hGHuvi, id, ognoo, shuurhaiId];
  Map<String, dynamic> toJson() =>
      _$ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil$SubAShuurhaiHeregjiltToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil with EquatableMixin {
  ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil();

  factory ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil.fromJson(
          Map<String, dynamic> json) =>
      _$ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjilFromJson(json);

  String ajil;

  @JsonKey(name: 'alban_tushaal')
  String albanTushaal;

  String angilal;

  @JsonKey(name: 'b_g_id')
  int bGId;

  @JsonKey(name: 'guitsetgel_huvi')
  double guitsetgelHuvi;

  int id;

  DateTime ognoo;

  String salbar;

  @JsonKey(name: 'shiidverleh_hugatsaa')
  DateTime shiidverlehHugatsaa;

  @JsonKey(name: 'shuurhai_cat_id')
  int shuurhaiCatId;

  String status;

  String tailan;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @JsonKey(name: 'sub_a_shuurhai_heregjilt')
  List<ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil$SubAShuurhaiHeregjilt>
      subAShuurhaiHeregjilt;

  @override
  List<Object> get props => [
        ajil,
        albanTushaal,
        angilal,
        bGId,
        guitsetgelHuvi,
        id,
        ognoo,
        salbar,
        shiidverlehHugatsaa,
        shuurhaiCatId,
        status,
        tailan,
        tolovId,
        subAShuurhaiHeregjilt
      ];
  Map<String, dynamic> toJson() =>
      _$ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjilToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ShuurkhaiAjil$Query$Paginate with EquatableMixin {
  ShuurkhaiAjil$Query$Paginate();

  factory ShuurkhaiAjil$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$ShuurkhaiAjil$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_shuurkhai_ajil')
  List<ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil> dsShuurkhaiAjil;

  @override
  List<Object> get props => [total, lastPage, dsShuurkhaiAjil];
  Map<String, dynamic> toJson() => _$ShuurkhaiAjil$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ShuurkhaiAjil$Query with EquatableMixin {
  ShuurkhaiAjil$Query();

  factory ShuurkhaiAjil$Query.fromJson(Map<String, dynamic> json) =>
      _$ShuurkhaiAjil$QueryFromJson(json);

  ShuurkhaiAjil$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$ShuurkhaiAjil$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ShuurkhaiAjilArguments extends JsonSerializable with EquatableMixin {
  ShuurkhaiAjilArguments({@required this.page, @required this.size});

  @override
  factory ShuurkhaiAjilArguments.fromJson(Map<String, dynamic> json) =>
      _$ShuurkhaiAjilArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$ShuurkhaiAjilArgumentsToJson(this);
}

class ShuurkhaiAjilQuery
    extends GraphQLQuery<ShuurkhaiAjil$Query, ShuurkhaiAjilArguments> {
  ShuurkhaiAjilQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'shuurkhai_ajil'),
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
                    name: NameNode(value: 'ds_shuurkhai_ajil'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'ajil'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'alban_tushaal'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'angilal'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'b_g_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'guitsetgel_huvi'),
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
                          name: NameNode(value: 'shiidverleh_hugatsaa'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'shuurhai_cat_id'),
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
                          name: NameNode(value: 'tailan'),
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
                          name: NameNode(value: 'sub_a_shuurhai_heregjilt'),
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
                                name: NameNode(value: 'h_g_huvi'),
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
                                name: NameNode(value: 'shuurhai_id'),
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
  final String operationName = 'shuurkhai_ajil';

  @override
  final ShuurkhaiAjilArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ShuurkhaiAjil$Query parse(Map<String, dynamic> json) =>
      ShuurkhaiAjil$Query.fromJson(json);
}
