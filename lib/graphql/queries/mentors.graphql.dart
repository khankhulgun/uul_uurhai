// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'mentors.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Mentors$Query$Mentors with EquatableMixin {
  Mentors$Query$Mentors();

  factory Mentors$Query$Mentors.fromJson(Map<String, dynamic> json) =>
      _$Mentors$Query$MentorsFromJson(json);

  int id;

  @JsonKey(name: 'adviser_woman_one')
  String adviserWomanOne;

  @JsonKey(name: 'adviser_woman_two')
  String adviserWomanTwo;

  String bio;

  String email;

  String facebook;

  String firstname;

  String instagram;

  String lastname;

  String phone;

  String photo;

  String skype;

  String twitter;

  String website;

  @override
  List<Object> get props => [
        id,
        adviserWomanOne,
        adviserWomanTwo,
        bio,
        email,
        facebook,
        firstname,
        instagram,
        lastname,
        phone,
        photo,
        skype,
        twitter,
        website
      ];
  Map<String, dynamic> toJson() => _$Mentors$Query$MentorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Mentors$Query with EquatableMixin {
  Mentors$Query();

  factory Mentors$Query.fromJson(Map<String, dynamic> json) =>
      _$Mentors$QueryFromJson(json);

  List<Mentors$Query$Mentors> mentors;

  @override
  List<Object> get props => [mentors];
  Map<String, dynamic> toJson() => _$Mentors$QueryToJson(this);
}

class MentorsQuery extends GraphQLQuery<Mentors$Query, JsonSerializable> {
  MentorsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'mentors'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'mentors'),
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
                    name: NameNode(value: 'adviser_woman_one'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'adviser_woman_two'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'bio'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'email'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'facebook'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'firstname'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'instagram'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'lastname'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'phone'),
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
                    name: NameNode(value: 'skype'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'twitter'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'website'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'mentors';

  @override
  List<Object> get props => [document, operationName];
  @override
  Mentors$Query parse(Map<String, dynamic> json) =>
      Mentors$Query.fromJson(json);
}
