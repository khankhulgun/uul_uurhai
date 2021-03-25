// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'professions.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Professions$Query$LutDirect$ProfessionEdu with EquatableMixin {
  Professions$Query$LutDirect$ProfessionEdu();

  factory Professions$Query$LutDirect$ProfessionEdu.fromJson(
          Map<String, dynamic> json) =>
      _$Professions$Query$LutDirect$ProfessionEduFromJson(json);

  int id;

  @JsonKey(name: 'link_one')
  String linkOne;

  @JsonKey(name: 'news_one')
  String newsOne;

  String photo;

  @JsonKey(name: 'title_one')
  String titleOne;

  @JsonKey(name: 'torol_id')
  int torolId;

  @JsonKey(name: 'created_at')
  DateTime createdAt;

  @override
  List<Object> get props =>
      [id, linkOne, newsOne, photo, titleOne, torolId, createdAt];
  Map<String, dynamic> toJson() =>
      _$Professions$Query$LutDirect$ProfessionEduToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Professions$Query$LutDirect with EquatableMixin {
  Professions$Query$LutDirect();

  factory Professions$Query$LutDirect.fromJson(Map<String, dynamic> json) =>
      _$Professions$Query$LutDirectFromJson(json);

  int id;

  String direct;

  @JsonKey(name: 'profession_edu')
  List<Professions$Query$LutDirect$ProfessionEdu> professionEdu;

  @override
  List<Object> get props => [id, direct, professionEdu];
  Map<String, dynamic> toJson() => _$Professions$Query$LutDirectToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Professions$Query with EquatableMixin {
  Professions$Query();

  factory Professions$Query.fromJson(Map<String, dynamic> json) =>
      _$Professions$QueryFromJson(json);

  @JsonKey(name: 'lut_direct')
  List<Professions$Query$LutDirect> lutDirect;

  @override
  List<Object> get props => [lutDirect];
  Map<String, dynamic> toJson() => _$Professions$QueryToJson(this);
}

class ProfessionsQuery
    extends GraphQLQuery<Professions$Query, JsonSerializable> {
  ProfessionsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'professions'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'lut_direct'),
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
                    name: NameNode(value: 'direct'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'profession_edu'),
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
                          name: NameNode(value: 'link_one'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'news_one'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'photo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'title_one'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'torol_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'created_at'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'professions';

  @override
  List<Object> get props => [document, operationName];
  @override
  Professions$Query parse(Map<String, dynamic> json) =>
      Professions$Query.fromJson(json);
}
