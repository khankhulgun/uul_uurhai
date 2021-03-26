// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'medee.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class PaginateMedee$Query$Paginate$DsMedee with EquatableMixin {
  PaginateMedee$Query$Paginate$DsMedee();

  factory PaginateMedee$Query$Paginate$DsMedee.fromJson(
          Map<String, dynamic> json) =>
      _$PaginateMedee$Query$Paginate$DsMedeeFromJson(json);

  int id;

  String medee;

  String angilal;

  DateTime ognoo;

  String tailbar;

  @override
  List<Object> get props => [id, medee, angilal, ognoo, tailbar];
  Map<String, dynamic> toJson() =>
      _$PaginateMedee$Query$Paginate$DsMedeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateMedee$Query$Paginate with EquatableMixin {
  PaginateMedee$Query$Paginate();

  factory PaginateMedee$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$PaginateMedee$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_medee')
  List<PaginateMedee$Query$Paginate$DsMedee> dsMedee;

  @override
  List<Object> get props => [total, lastPage, dsMedee];
  Map<String, dynamic> toJson() => _$PaginateMedee$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateMedee$Query with EquatableMixin {
  PaginateMedee$Query();

  factory PaginateMedee$Query.fromJson(Map<String, dynamic> json) =>
      _$PaginateMedee$QueryFromJson(json);

  PaginateMedee$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$PaginateMedee$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginateMedeeArguments extends JsonSerializable with EquatableMixin {
  PaginateMedeeArguments({@required this.page, @required this.size});

  @override
  factory PaginateMedeeArguments.fromJson(Map<String, dynamic> json) =>
      _$PaginateMedeeArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$PaginateMedeeArgumentsToJson(this);
}

class PaginateMedeeQuery
    extends GraphQLQuery<PaginateMedee$Query, PaginateMedeeArguments> {
  PaginateMedeeQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'paginateMedee'),
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
                    name: NameNode(value: 'ds_medee'),
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
                          name: NameNode(value: 'medee'),
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
                          name: NameNode(value: 'ognoo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'tailbar'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'paginateMedee';

  @override
  final PaginateMedeeArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PaginateMedee$Query parse(Map<String, dynamic> json) =>
      PaginateMedee$Query.fromJson(json);
}
