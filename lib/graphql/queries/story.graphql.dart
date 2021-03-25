// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'story.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class SuccessStory$Query$StemSuccessStory with EquatableMixin {
  SuccessStory$Query$StemSuccessStory();

  factory SuccessStory$Query$StemSuccessStory.fromJson(
          Map<String, dynamic> json) =>
      _$SuccessStory$Query$StemSuccessStoryFromJson(json);

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
      _$SuccessStory$Query$StemSuccessStoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SuccessStory$Query with EquatableMixin {
  SuccessStory$Query();

  factory SuccessStory$Query.fromJson(Map<String, dynamic> json) =>
      _$SuccessStory$QueryFromJson(json);

  @JsonKey(name: 'stem_success_story')
  List<SuccessStory$Query$StemSuccessStory> stemSuccessStory;

  @override
  List<Object> get props => [stemSuccessStory];
  Map<String, dynamic> toJson() => _$SuccessStory$QueryToJson(this);
}

class SuccessStoryQuery
    extends GraphQLQuery<SuccessStory$Query, JsonSerializable> {
  SuccessStoryQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'success_story'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'stem_success_story'),
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
  final String operationName = 'success_story';

  @override
  List<Object> get props => [document, operationName];
  @override
  SuccessStory$Query parse(Map<String, dynamic> json) =>
      SuccessStory$Query.fromJson(json);
}
