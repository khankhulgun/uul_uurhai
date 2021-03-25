// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'test_results.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class TestResults$Query$TestResults with EquatableMixin {
  TestResults$Query$TestResults();

  factory TestResults$Query$TestResults.fromJson(Map<String, dynamic> json) =>
      _$TestResults$Query$TestResultsFromJson(json);

  int id;

  @JsonKey(name: 'test_title')
  String testTitle;

  String conclution;

  @override
  List<Object> get props => [id, testTitle, conclution];
  Map<String, dynamic> toJson() => _$TestResults$Query$TestResultsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestResults$Query with EquatableMixin {
  TestResults$Query();

  factory TestResults$Query.fromJson(Map<String, dynamic> json) =>
      _$TestResults$QueryFromJson(json);

  @JsonKey(name: 'test_results')
  List<TestResults$Query$TestResults> testResults;

  @override
  List<Object> get props => [testResults];
  Map<String, dynamic> toJson() => _$TestResults$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestResultsArguments extends JsonSerializable with EquatableMixin {
  TestResultsArguments({@required this.user_id});

  @override
  factory TestResultsArguments.fromJson(Map<String, dynamic> json) =>
      _$TestResultsArgumentsFromJson(json);

  final String user_id;

  @override
  List<Object> get props => [user_id];
  @override
  Map<String, dynamic> toJson() => _$TestResultsArgumentsToJson(this);
}

class TestResultsQuery
    extends GraphQLQuery<TestResults$Query, TestResultsArguments> {
  TestResultsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'test_results'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'user_id')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'test_results'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'filters'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value: StringValueNode(
                                value: 'user_id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'condition'),
                            value:
                                EnumValueNode(name: NameNode(value: 'equals'))),
                        ObjectFieldNode(
                            name: NameNode(value: 'value'),
                            value:
                                VariableNode(name: NameNode(value: 'user_id')))
                      ])
                    ])),
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
                    name: NameNode(value: 'test_title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'conclution'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'test_results';

  @override
  final TestResultsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  TestResults$Query parse(Map<String, dynamic> json) =>
      TestResults$Query.fromJson(json);
}
