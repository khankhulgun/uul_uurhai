// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'article.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Articles$Query$Article with EquatableMixin {
  Articles$Query$Article();

  factory Articles$Query$Article.fromJson(Map<String, dynamic> json) =>
      _$Articles$Query$ArticleFromJson(json);

  int id;

  String title;

  @JsonKey(name: 'poster_image')
  String posterImage;

  String source;

  String news;

  @override
  List<Object> get props => [id, title, posterImage, source, news];
  Map<String, dynamic> toJson() => _$Articles$Query$ArticleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Articles$Query with EquatableMixin {
  Articles$Query();

  factory Articles$Query.fromJson(Map<String, dynamic> json) =>
      _$Articles$QueryFromJson(json);

  List<Articles$Query$Article> article;

  @override
  List<Object> get props => [article];
  Map<String, dynamic> toJson() => _$Articles$QueryToJson(this);
}

class ArticlesQuery extends GraphQLQuery<Articles$Query, JsonSerializable> {
  ArticlesQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'articles'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'article'),
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
              ]))
        ]))
  ]);

  @override
  final String operationName = 'articles';

  @override
  List<Object> get props => [document, operationName];
  @override
  Articles$Query parse(Map<String, dynamic> json) =>
      Articles$Query.fromJson(json);
}
