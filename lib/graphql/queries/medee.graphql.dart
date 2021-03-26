// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'medee.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Medee$Query$Paginate$DsMedee with EquatableMixin {
  Medee$Query$Paginate$DsMedee();

  factory Medee$Query$Paginate$DsMedee.fromJson(Map<String, dynamic> json) =>
      _$Medee$Query$Paginate$DsMedeeFromJson(json);

  int id;

  String medee;

  String angilal;

  DateTime ognoo;

  String tailbar;

  @override
  List<Object> get props => [id, medee, angilal, ognoo, tailbar];
  Map<String, dynamic> toJson() => _$Medee$Query$Paginate$DsMedeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Medee$Query$Paginate with EquatableMixin {
  Medee$Query$Paginate();

  factory Medee$Query$Paginate.fromJson(Map<String, dynamic> json) =>
      _$Medee$Query$PaginateFromJson(json);

  int total;

  @JsonKey(name: 'last_page')
  int lastPage;

  @JsonKey(name: 'ds_medee')
  List<Medee$Query$Paginate$DsMedee> dsMedee;

  @override
  List<Object> get props => [total, lastPage, dsMedee];
  Map<String, dynamic> toJson() => _$Medee$Query$PaginateToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Medee$Query with EquatableMixin {
  Medee$Query();

  factory Medee$Query.fromJson(Map<String, dynamic> json) =>
      _$Medee$QueryFromJson(json);

  Medee$Query$Paginate paginate;

  @override
  List<Object> get props => [paginate];
  Map<String, dynamic> toJson() => _$Medee$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MedeeArguments extends JsonSerializable with EquatableMixin {
  MedeeArguments({@required this.page, @required this.size});

  @override
  factory MedeeArguments.fromJson(Map<String, dynamic> json) =>
      _$MedeeArgumentsFromJson(json);

  final int page;

  final int size;

  @override
  List<Object> get props => [page, size];
  @override
  Map<String, dynamic> toJson() => _$MedeeArgumentsToJson(this);
}

class MedeeQuery extends GraphQLQuery<Medee$Query, MedeeArguments> {
  MedeeQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'medee'),
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
  final String operationName = 'medee';

  @override
  final MedeeArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Medee$Query parse(Map<String, dynamic> json) => Medee$Query.fromJson(json);
}
