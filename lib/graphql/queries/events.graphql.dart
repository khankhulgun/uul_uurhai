// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'events.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Events$Query$EventStudy with EquatableMixin {
  Events$Query$EventStudy();

  factory Events$Query$EventStudy.fromJson(Map<String, dynamic> json) =>
      _$Events$Query$EventStudyFromJson(json);

  int id;

  @JsonKey(name: 'event_date')
  DateTime eventDate;

  @JsonKey(name: 'study_name')
  String studyName;

  @JsonKey(name: 'poster_image')
  String posterImage;

  @JsonKey(name: 'event_location')
  String eventLocation;

  @JsonKey(name: 'event_news')
  String eventNews;

  @override
  List<Object> get props =>
      [id, eventDate, studyName, posterImage, eventLocation, eventNews];
  Map<String, dynamic> toJson() => _$Events$Query$EventStudyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Events$Query with EquatableMixin {
  Events$Query();

  factory Events$Query.fromJson(Map<String, dynamic> json) =>
      _$Events$QueryFromJson(json);

  @JsonKey(name: 'event_study')
  List<Events$Query$EventStudy> eventStudy;

  @override
  List<Object> get props => [eventStudy];
  Map<String, dynamic> toJson() => _$Events$QueryToJson(this);
}

class EventsQuery extends GraphQLQuery<Events$Query, JsonSerializable> {
  EventsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'events'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'event_study'),
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
                    name: NameNode(value: 'event_date'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'study_name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'poster_image'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'event_location'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'event_news'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'events';

  @override
  List<Object> get props => [document, operationName];
  @override
  Events$Query parse(Map<String, dynamic> json) => Events$Query.fromJson(json);
}
