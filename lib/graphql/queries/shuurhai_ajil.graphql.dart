// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'shuurhai_ajil.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class PaginateShuurhaiajil$Query$Paginate$DsShuurkhaiAjil with EquatableMixin {
  PaginateShuurhaiajil$Query$Paginate$DsShuurkhaiAjil();

  factory PaginateShuurhaiajil$Query$Paginate$DsShuurkhaiAjil.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateShuurhaiajil$Query$Paginate$DsShuurkhaiAjilFromJson(json);

  String ajil;

  @JsonKey(name: 'alban_tushaal')
  String albanTushaal;

  String angilal;

  @JsonKey(name: 'b_g_id')
  int bGId;

  int id;

  DateTime ognoo;

  String salbar;

  @JsonKey(name: 'shiidverleh_hugatsaa')
  DateTime shiidverlehHugatsaa;

  @JsonKey(name: 'shuurhai_cat_id')
  int shuurhaiCatId;

  String status;

  @JsonKey(name: 'tolov_id')
  int tolovId;

  @override
  List<Object> get props => [
        ajil,
        albanTushaal,
        angilal,
        bGId,
        id,
        ognoo,
        salbar,
        shiidverlehHugatsaa,
        shuurhaiCatId,
        status,
        tolovId
      ];
  Map<String, dynamic> toJson() =>
      _$PaginateShuurhaiajil$Query$Paginate$DsShuurkhaiAjilToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateShuurhaiajil$Query$Paginate with EquatableMixin {
  PaginateShuurhaiajil$Query$Paginate();

  factory PaginateShuurhaiajil$Query$Paginate.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateShuurhaiajil$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_shuurkhai_ajil')
  List<PaginateShuurhaiajil$Query$Paginate$DsShuurkhaiAjil> dsShuurkhaiAjil;

  @override
  List<Object> get props => [total, lastPage, dsShuurkhaiAjil];
  Map<String, dynamic> toJson() =>
      _$PaginateShuurhaiajil$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateShuurhaiajil$Query with EquatableMixin {
  PaginateShuurhaiajil$Query();

  factory PaginateShuurhaiajil$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginateShuurhaiajil$QueryFromJson(json);

  PaginateShuurhaiajil$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginateShuurhaiajil$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateShuurhaiajilArguments extends JsonSerializable
    with EquatableMixin {
  PaginateShuurhaiajilArguments({@required this.page, @required this.size});

  @override
  factory PaginateShuurhaiajilArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginateShuurhaiajilArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginateShuurhaiajilArgumentsToJson(this);
}

class PaginateShuurhaiajilQuery extends GraphQLQuery<PaginateShuurhaiajil$Query,
    PaginateShuurhaiajilArguments> {
  PaginateShuurhaiajilQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginateShuurhaiajil'),
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
                          name: NameNode(value: 'tolov_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'paginateShuurhaiajil';

  @override
  final PaginateShuurhaiajilArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginateShuurhaiajil$Query parse(Map<String, dynamic> json) =>
      PaginateShuurhaiajil$Query.fromJson(json);
}
