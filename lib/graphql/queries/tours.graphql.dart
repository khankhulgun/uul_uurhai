// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'tours.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Tours$Query$StemLabTour with EquatableMixin {
  Tours$Query$StemLabTour();

  factory Tours$Query$StemLabTour.fromJson(Map<String, dynamic> json) =>
      _$Tours$Query$StemLabTourFromJson(json);

  int id;

  String link;

  String news;

  @JsonKey(name: 'poster_image')
  String posterImage;

  String title;

  @JsonKey(name: 'wide_image')
  String wideImage;

  @override
  List<Object> get props => [id, link, news, posterImage, title, wideImage];
  Map<String, dynamic> toJson() => _$Tours$Query$StemLabTourToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Tours$Query with EquatableMixin {
  Tours$Query();

  factory Tours$Query.fromJson(Map<String, dynamic> json) =>
      _$Tours$QueryFromJson(json);

  @JsonKey(name: 'stem_lab_tour')
  List<Tours$Query$StemLabTour> stemLabTour;

  @override
  List<Object> get props => [stemLabTour];
  Map<String, dynamic> toJson() => _$Tours$QueryToJson(this);
}

class ToursQuery extends GraphQLQuery<Tours$Query, JsonSerializable> {
  ToursQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'tours'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'stem_lab_tour'),
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
                    name: NameNode(value: 'link'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'news'),
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
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'wide_image'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'tours';

  @override
  List<Object> get props => [document, operationName];
  @override
  Tours$Query parse(Map<String, dynamic> json) => Tours$Query.fromJson(json);
}
