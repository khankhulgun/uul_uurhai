// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'jobs.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Jobs$Query$Workplace with EquatableMixin {
  Jobs$Query$Workplace();

  factory Jobs$Query$Workplace.fromJson(Map<String, dynamic> json) =>
      _$Jobs$Query$WorkplaceFromJson(json);

  String email;

  int fee;

  int id;

  @JsonKey(name: 'org_name')
  String orgName;

  String page;

  String position;

  @JsonKey(name: 'poster_photo')
  String posterPhoto;

  String roles;

  @JsonKey(name: 'special_skill')
  String specialSkill;

  String web;

  @override
  List<Object> get props => [
        email,
        fee,
        id,
        orgName,
        page,
        position,
        posterPhoto,
        roles,
        specialSkill,
        web
      ];
  Map<String, dynamic> toJson() => _$Jobs$Query$WorkplaceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Jobs$Query with EquatableMixin {
  Jobs$Query();

  factory Jobs$Query.fromJson(Map<String, dynamic> json) =>
      _$Jobs$QueryFromJson(json);

  List<Jobs$Query$Workplace> workplace;

  @override
  List<Object> get props => [workplace];
  Map<String, dynamic> toJson() => _$Jobs$QueryToJson(this);
}

class JobsQuery extends GraphQLQuery<Jobs$Query, JsonSerializable> {
  JobsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'jobs'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'workplace'),
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
                    name: NameNode(value: 'email'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'fee'),
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
                    name: NameNode(value: 'org_name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'page'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'position'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'poster_photo'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'roles'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'special_skill'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'web'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'jobs';

  @override
  List<Object> get props => [document, operationName];
  @override
  Jobs$Query parse(Map<String, dynamic> json) => Jobs$Query.fromJson(json);
}
