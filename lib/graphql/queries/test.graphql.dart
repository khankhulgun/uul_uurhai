// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'test.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Test$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes
    with EquatableMixin {
  Test$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes();

  factory Test$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswesFromJson(
          json);

  int id;

  String answers;

  @JsonKey(name: 'questions_id')
  int questionsId;

  @JsonKey(name: 'is_selected')
  int isSelected;

  @override
  List<Object> get props => [id, answers, questionsId, isSelected];
  Map<String, dynamic> toJson() =>
      _$Test$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class Test$Query$StemTest$SubFormTestQuestions with EquatableMixin {
  Test$Query$StemTest$SubFormTestQuestions();

  factory Test$Query$StemTest$SubFormTestQuestions.fromJson(
          Map<String, dynamic> json) =>
      _$Test$Query$StemTest$SubFormTestQuestionsFromJson(json);

  int id;

  @JsonKey(name: 'test_id')
  int testId;

  String questions;

  @JsonKey(name: 'sub_form_test_questions_answes')
  List<Test$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes>
      subFormTestQuestionsAnswes;

  @override
  List<Object> get props => [id, testId, questions, subFormTestQuestionsAnswes];
  Map<String, dynamic> toJson() =>
      _$Test$Query$StemTest$SubFormTestQuestionsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Test$Query$StemTest with EquatableMixin {
  Test$Query$StemTest();

  factory Test$Query$StemTest.fromJson(Map<String, dynamic> json) =>
      _$Test$Query$StemTestFromJson(json);

  int id;

  @JsonKey(name: 'cat_id')
  int catId;

  @JsonKey(name: 'poster_upload')
  String posterUpload;

  String title;

  @JsonKey(name: 'sub_form_test_questions')
  List<Test$Query$StemTest$SubFormTestQuestions> subFormTestQuestions;

  @override
  List<Object> get props =>
      [id, catId, posterUpload, title, subFormTestQuestions];
  Map<String, dynamic> toJson() => _$Test$Query$StemTestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Test$Query with EquatableMixin {
  Test$Query();

  factory Test$Query.fromJson(Map<String, dynamic> json) =>
      _$Test$QueryFromJson(json);

  @JsonKey(name: 'stem_test')
  List<Test$Query$StemTest> stemTest;

  @override
  List<Object> get props => [stemTest];
  Map<String, dynamic> toJson() => _$Test$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TestArguments extends JsonSerializable with EquatableMixin {
  TestArguments({@required this.id});

  @override
  factory TestArguments.fromJson(Map<String, dynamic> json) =>
      _$TestArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$TestArgumentsToJson(this);
}

class TestQuery extends GraphQLQuery<Test$Query, TestArguments> {
  TestQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'test'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'stem_test'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'limit'),
                    value: IntValueNode(value: '10')),
                ArgumentNode(
                    name: NameNode(value: 'filters'),
                    value: ListValueNode(values: [
                      ObjectValueNode(fields: [
                        ObjectFieldNode(
                            name: NameNode(value: 'column'),
                            value:
                                StringValueNode(value: 'id', isBlock: false)),
                        ObjectFieldNode(
                            name: NameNode(value: 'condition'),
                            value:
                                EnumValueNode(name: NameNode(value: 'equals'))),
                        ObjectFieldNode(
                            name: NameNode(value: 'value'),
                            value: VariableNode(name: NameNode(value: 'id')))
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
                    name: NameNode(value: 'cat_id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'poster_upload'),
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
                    name: NameNode(value: 'sub_form_test_questions'),
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
                          name: NameNode(value: 'test_id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'questions'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name:
                              NameNode(value: 'sub_form_test_questions_answes'),
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
                                name: NameNode(value: 'answers'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'questions_id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'is_selected'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'test';

  @override
  final TestArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Test$Query parse(Map<String, dynamic> json) => Test$Query.fromJson(json);
}
