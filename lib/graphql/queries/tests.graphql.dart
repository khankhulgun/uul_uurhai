// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'tests.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Tests$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes
    with EquatableMixin {
  Tests$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes();

  factory Tests$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes.fromJson(
          Map<String, dynamic> json) =>
      _$Tests$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswesFromJson(
          json);

  int id;

  String answers;

  @JsonKey(name: 'questions_id')
  int questionsId;

  @override
  List<Object> get props => [id, answers, questionsId];
  Map<String, dynamic> toJson() =>
      _$Tests$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class Tests$Query$StemTest$SubFormTestQuestions with EquatableMixin {
  Tests$Query$StemTest$SubFormTestQuestions();

  factory Tests$Query$StemTest$SubFormTestQuestions.fromJson(
          Map<String, dynamic> json) =>
      _$Tests$Query$StemTest$SubFormTestQuestionsFromJson(json);

  int id;

  @JsonKey(name: 'test_id')
  int testId;

  String questions;

  @JsonKey(name: 'sub_form_test_questions_answes')
  List<Tests$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes>
      subFormTestQuestionsAnswes;

  @override
  List<Object> get props => [id, testId, questions, subFormTestQuestionsAnswes];
  Map<String, dynamic> toJson() =>
      _$Tests$Query$StemTest$SubFormTestQuestionsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Tests$Query$StemTest with EquatableMixin {
  Tests$Query$StemTest();

  factory Tests$Query$StemTest.fromJson(Map<String, dynamic> json) =>
      _$Tests$Query$StemTestFromJson(json);

  int id;

  @JsonKey(name: 'cat_id')
  int catId;

  @JsonKey(name: 'poster_upload')
  String posterUpload;

  String title;

  @JsonKey(name: 'sub_form_test_questions')
  List<Tests$Query$StemTest$SubFormTestQuestions> subFormTestQuestions;

  @override
  List<Object> get props =>
      [id, catId, posterUpload, title, subFormTestQuestions];
  Map<String, dynamic> toJson() => _$Tests$Query$StemTestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Tests$Query with EquatableMixin {
  Tests$Query();

  factory Tests$Query.fromJson(Map<String, dynamic> json) =>
      _$Tests$QueryFromJson(json);

  @JsonKey(name: 'stem_test')
  List<Tests$Query$StemTest> stemTest;

  @override
  List<Object> get props => [stemTest];
  Map<String, dynamic> toJson() => _$Tests$QueryToJson(this);
}

class TestsQuery extends GraphQLQuery<Tests$Query, JsonSerializable> {
  TestsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'tests'),
        variableDefinitions: [],
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
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'tests';

  @override
  List<Object> get props => [document, operationName];
  @override
  Tests$Query parse(Map<String, dynamic> json) => Tests$Query.fromJson(json);
}
