// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'common.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Common$Query$LutAshigtMaltmal with EquatableMixin {
  Common$Query$LutAshigtMaltmal();

  factory Common$Query$LutAshigtMaltmal.fromJson(Map<String, dynamic> json) =>
      _$Common$Query$LutAshigtMaltmalFromJson(json);

  int id;

  @JsonKey(name: 'ashigt_maltmal')
  String ashigtMaltmal;

  @override
  List<Object> get props => [id, ashigtMaltmal];
  Map<String, dynamic> toJson() => _$Common$Query$LutAshigtMaltmalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Common$Query with EquatableMixin {
  Common$Query();

  factory Common$Query.fromJson(Map<String, dynamic> json) =>
      _$Common$QueryFromJson(json);

  @JsonKey(name: 'lut_ashigt_maltmal')
  List<Common$Query$LutAshigtMaltmal> lutAshigtMaltmal;

  @override
  List<Object> get props => [lutAshigtMaltmal];
  Map<String, dynamic> toJson() => _$Common$QueryToJson(this);
}

class CommonQuery extends GraphQLQuery<Common$Query, JsonSerializable> {
  CommonQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'common'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'lut_ashigt_maltmal'),
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
                    name: NameNode(value: 'ashigt_maltmal'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'common';

  @override
  List<Object> get props => [document, operationName];
  @override
  Common$Query parse(Map<String, dynamic> json) => Common$Query.fromJson(json);
}
