// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'home.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class HomeData$Query$Article with EquatableMixin {
  HomeData$Query$Article();

  factory HomeData$Query$Article.fromJson(Map<String, dynamic> json) =>
      _$HomeData$Query$ArticleFromJson(json);

  int id;

  String title;

  @JsonKey(name: 'poster_image')
  String posterImage;

  String source;

  String news;

  @override
  List<Object> get props => [id, title, posterImage, source, news];
  Map<String, dynamic> toJson() => _$HomeData$Query$ArticleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HomeData$Query$EventStudy with EquatableMixin {
  HomeData$Query$EventStudy();

  factory HomeData$Query$EventStudy.fromJson(Map<String, dynamic> json) =>
      _$HomeData$Query$EventStudyFromJson(json);

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
  Map<String, dynamic> toJson() => _$HomeData$Query$EventStudyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HomeData$Query with EquatableMixin {
  HomeData$Query();

  factory HomeData$Query.fromJson(Map<String, dynamic> json) =>
      _$HomeData$QueryFromJson(json);

  List<HomeData$Query$Article> article;

  @JsonKey(name: 'event_study')
  List<HomeData$Query$EventStudy> eventStudy;

  @override
  List<Object> get props => [article, eventStudy];
  Map<String, dynamic> toJson() => _$HomeData$QueryToJson(this);
}

class HomeDataQuery extends GraphQLQuery<HomeData$Query, JsonSerializable> {
  HomeDataQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'home_data'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'article'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'limit'),
                    value: IntValueNode(value: '10')),
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
                    name: NameNode(value: 'title'),
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
                    name: NameNode(value: 'source'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'news'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'event_study'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'limit'),
                    value: IntValueNode(value: '2')),
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
  final String operationName = 'home_data';

  @override
  List<Object> get props => [document, operationName];
  @override
  HomeData$Query parse(Map<String, dynamic> json) =>
      HomeData$Query.fromJson(json);
}
