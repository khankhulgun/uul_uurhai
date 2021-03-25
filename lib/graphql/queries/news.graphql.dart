// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'news.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class NewsData$Query$EventStudy with EquatableMixin {
  NewsData$Query$EventStudy();

  factory NewsData$Query$EventStudy.fromJson(Map<String, dynamic> json) =>
      _$NewsData$Query$EventStudyFromJson(json);

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
  Map<String, dynamic> toJson() => _$NewsData$Query$EventStudyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewsData$Query$Workplace with EquatableMixin {
  NewsData$Query$Workplace();

  factory NewsData$Query$Workplace.fromJson(Map<String, dynamic> json) =>
      _$NewsData$Query$WorkplaceFromJson(json);

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
  Map<String, dynamic> toJson() => _$NewsData$Query$WorkplaceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewsData$Query$Article with EquatableMixin {
  NewsData$Query$Article();

  factory NewsData$Query$Article.fromJson(Map<String, dynamic> json) =>
      _$NewsData$Query$ArticleFromJson(json);

  int id;

  String title;

  @JsonKey(name: 'poster_image')
  String posterImage;

  String source;

  String news;

  @override
  List<Object> get props => [id, title, posterImage, source, news];
  Map<String, dynamic> toJson() => _$NewsData$Query$ArticleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewsData$Query$StemSuccessStory with EquatableMixin {
  NewsData$Query$StemSuccessStory();

  factory NewsData$Query$StemSuccessStory.fromJson(Map<String, dynamic> json) =>
      _$NewsData$Query$StemSuccessStoryFromJson(json);

  int id;

  @JsonKey(name: 'poster_image')
  String posterImage;

  String story;

  String source;

  @JsonKey(name: 'story_name')
  String storyName;

  @override
  List<Object> get props => [id, posterImage, story, source, storyName];
  Map<String, dynamic> toJson() =>
      _$NewsData$Query$StemSuccessStoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NewsData$Query with EquatableMixin {
  NewsData$Query();

  factory NewsData$Query.fromJson(Map<String, dynamic> json) =>
      _$NewsData$QueryFromJson(json);

  @JsonKey(name: 'event_study')
  List<NewsData$Query$EventStudy> eventStudy;

  List<NewsData$Query$Workplace> workplace;

  List<NewsData$Query$Article> article;

  @JsonKey(name: 'stem_success_story')
  List<NewsData$Query$StemSuccessStory> stemSuccessStory;

  @override
  List<Object> get props => [eventStudy, workplace, article, stemSuccessStory];
  Map<String, dynamic> toJson() => _$NewsData$QueryToJson(this);
}

class NewsDataQuery extends GraphQLQuery<NewsData$Query, JsonSerializable> {
  NewsDataQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'news_data'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
              ])),
          FieldNode(
              name: NameNode(value: 'workplace'),
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
              ])),
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
              name: NameNode(value: 'stem_success_story'),
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
                    name: NameNode(value: 'poster_image'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'story'),
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
                    name: NameNode(value: 'story_name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'news_data';

  @override
  List<Object> get props => [document, operationName];
  @override
  NewsData$Query parse(Map<String, dynamic> json) =>
      NewsData$Query.fromJson(json);
}
