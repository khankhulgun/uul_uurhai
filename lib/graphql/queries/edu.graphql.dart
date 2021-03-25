// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'edu.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Edu$Query$Mentors with EquatableMixin {
  Edu$Query$Mentors();

  factory Edu$Query$Mentors.fromJson(Map<String, dynamic> json) =>
      _$Edu$Query$MentorsFromJson(json);

  int id;

  @JsonKey(name: 'adviser_woman_one')
  String adviserWomanOne;

  @JsonKey(name: 'adviser_woman_two')
  String adviserWomanTwo;

  String bio;

  String email;

  String facebook;

  String firstname;

  String instagram;

  String lastname;

  String phone;

  String photo;

  String skype;

  String twitter;

  String website;

  @override
  List<Object> get props => [
        id,
        adviserWomanOne,
        adviserWomanTwo,
        bio,
        email,
        facebook,
        firstname,
        instagram,
        lastname,
        phone,
        photo,
        skype,
        twitter,
        website
      ];
  Map<String, dynamic> toJson() => _$Edu$Query$MentorsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Edu$Query$StemLabTour with EquatableMixin {
  Edu$Query$StemLabTour();

  factory Edu$Query$StemLabTour.fromJson(Map<String, dynamic> json) =>
      _$Edu$Query$StemLabTourFromJson(json);

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
  Map<String, dynamic> toJson() => _$Edu$Query$StemLabTourToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Edu$Query$LutDirect with EquatableMixin {
  Edu$Query$LutDirect();

  factory Edu$Query$LutDirect.fromJson(Map<String, dynamic> json) =>
      _$Edu$Query$LutDirectFromJson(json);

  int id;

  String direct;

  @override
  List<Object> get props => [id, direct];
  Map<String, dynamic> toJson() => _$Edu$Query$LutDirectToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Edu$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes
    with EquatableMixin {
  Edu$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes();

  factory Edu$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes.fromJson(
          Map<String, dynamic> json) =>
      _$Edu$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswesFromJson(
          json);

  int id;

  String answers;

  @JsonKey(name: 'questions_id')
  int questionsId;

  @override
  List<Object> get props => [id, answers, questionsId];
  Map<String, dynamic> toJson() =>
      _$Edu$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class Edu$Query$StemTest$SubFormTestQuestions with EquatableMixin {
  Edu$Query$StemTest$SubFormTestQuestions();

  factory Edu$Query$StemTest$SubFormTestQuestions.fromJson(
          Map<String, dynamic> json) =>
      _$Edu$Query$StemTest$SubFormTestQuestionsFromJson(json);

  int id;

  @JsonKey(name: 'test_id')
  int testId;

  String questions;

  @JsonKey(name: 'sub_form_test_questions_answes')
  List<Edu$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes>
      subFormTestQuestionsAnswes;

  @override
  List<Object> get props => [id, testId, questions, subFormTestQuestionsAnswes];
  Map<String, dynamic> toJson() =>
      _$Edu$Query$StemTest$SubFormTestQuestionsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Edu$Query$StemTest with EquatableMixin {
  Edu$Query$StemTest();

  factory Edu$Query$StemTest.fromJson(Map<String, dynamic> json) =>
      _$Edu$Query$StemTestFromJson(json);

  int id;

  @JsonKey(name: 'cat_id')
  int catId;

  @JsonKey(name: 'poster_upload')
  String posterUpload;

  String title;

  @JsonKey(name: 'sub_form_test_questions')
  List<Edu$Query$StemTest$SubFormTestQuestions> subFormTestQuestions;

  @override
  List<Object> get props =>
      [id, catId, posterUpload, title, subFormTestQuestions];
  Map<String, dynamic> toJson() => _$Edu$Query$StemTestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Edu$Query with EquatableMixin {
  Edu$Query();

  factory Edu$Query.fromJson(Map<String, dynamic> json) =>
      _$Edu$QueryFromJson(json);

  List<Edu$Query$Mentors> mentors;

  @JsonKey(name: 'stem_lab_tour')
  List<Edu$Query$StemLabTour> stemLabTour;

  @JsonKey(name: 'lut_direct')
  List<Edu$Query$LutDirect> lutDirect;

  @JsonKey(name: 'stem_test')
  List<Edu$Query$StemTest> stemTest;

  @override
  List<Object> get props => [mentors, stemLabTour, lutDirect, stemTest];
  Map<String, dynamic> toJson() => _$Edu$QueryToJson(this);
}

class EduQuery extends GraphQLQuery<Edu$Query, JsonSerializable> {
  EduQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'edu'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'mentors'),
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
                    name: NameNode(value: 'adviser_woman_one'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'adviser_woman_two'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'bio'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'email'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'facebook'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'firstname'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'instagram'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'lastname'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'phone'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'photo'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'skype'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'twitter'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'website'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
          FieldNode(
              name: NameNode(value: 'stem_lab_tour'),
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
              ])),
          FieldNode(
              name: NameNode(value: 'lut_direct'),
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
                    name: NameNode(value: 'direct'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ])),
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
  final String operationName = 'edu';

  @override
  List<Object> get props => [document, operationName];
  @override
  Edu$Query parse(Map<String, dynamic> json) => Edu$Query.fromJson(json);
}
