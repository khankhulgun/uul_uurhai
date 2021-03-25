// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'medee.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Medee$Query$DsMedee with EquatableMixin {
  Medee$Query$DsMedee();

  factory Medee$Query$DsMedee.fromJson(Map<String, dynamic> json) =>
      _$Medee$Query$DsMedeeFromJson(json);

  int id;

  String angilal;

  String medee;

  @JsonKey(name: 'medee_cat_id')
  int medeeCatId;

  DateTime ognoo;

  String tailbar;

  @override
  List<Object> get props => [id, angilal, medee, medeeCatId, ognoo, tailbar];
  Map<String, dynamic> toJson() => _$Medee$Query$DsMedeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Medee$Query with EquatableMixin {
  Medee$Query();

  factory Medee$Query.fromJson(Map<String, dynamic> json) =>
      _$Medee$QueryFromJson(json);

  @JsonKey(name: 'ds_medee')
  List<Medee$Query$DsMedee> dsMedee;

  @override
  List<Object> get props => [dsMedee];
  Map<String, dynamic> toJson() => _$Medee$QueryToJson(this);
}

class MedeeQuery extends GraphQLQuery<Medee$Query, JsonSerializable> {
  MedeeQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'medee'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'ds_medee'),
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
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
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
                    name: NameNode(value: 'medee'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'medee_cat_id'),
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
  ]);

  @override
  final String operationName = 'medee';

  @override
  List<Object> get props => [document, operationName];
  @override
  Medee$Query parse(Map<String, dynamic> json) => Medee$Query.fromJson(json);
}
