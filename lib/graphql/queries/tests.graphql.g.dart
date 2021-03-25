// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tests.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tests$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes
    _$Tests$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswesFromJson(
        Map<String, dynamic> json) {
  return Tests$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes()
    ..id = json['id'] as int
    ..answers = json['answers'] as String
    ..questionsId = json['questions_id'] as int;
}

Map<String, dynamic>
    _$Tests$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswesToJson(
            Tests$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'answers': instance.answers,
          'questions_id': instance.questionsId,
        };

Tests$Query$StemTest$SubFormTestQuestions
    _$Tests$Query$StemTest$SubFormTestQuestionsFromJson(
        Map<String, dynamic> json) {
  return Tests$Query$StemTest$SubFormTestQuestions()
    ..id = json['id'] as int
    ..testId = json['test_id'] as int
    ..questions = json['questions'] as String
    ..subFormTestQuestionsAnswes = (json['sub_form_test_questions_answes']
            as List)
        ?.map((e) => e == null
            ? null
            : Tests$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Tests$Query$StemTest$SubFormTestQuestionsToJson(
        Tests$Query$StemTest$SubFormTestQuestions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'test_id': instance.testId,
      'questions': instance.questions,
      'sub_form_test_questions_answes': instance.subFormTestQuestionsAnswes
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

Tests$Query$StemTest _$Tests$Query$StemTestFromJson(Map<String, dynamic> json) {
  return Tests$Query$StemTest()
    ..id = json['id'] as int
    ..catId = json['cat_id'] as int
    ..posterUpload = json['poster_upload'] as String
    ..title = json['title'] as String
    ..subFormTestQuestions = (json['sub_form_test_questions'] as List)
        ?.map((e) => e == null
            ? null
            : Tests$Query$StemTest$SubFormTestQuestions.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Tests$Query$StemTestToJson(
        Tests$Query$StemTest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cat_id': instance.catId,
      'poster_upload': instance.posterUpload,
      'title': instance.title,
      'sub_form_test_questions':
          instance.subFormTestQuestions?.map((e) => e?.toJson())?.toList(),
    };

Tests$Query _$Tests$QueryFromJson(Map<String, dynamic> json) {
  return Tests$Query()
    ..stemTest = (json['stem_test'] as List)
        ?.map((e) => e == null
            ? null
            : Tests$Query$StemTest.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Tests$QueryToJson(Tests$Query instance) =>
    <String, dynamic>{
      'stem_test': instance.stemTest?.map((e) => e?.toJson())?.toList(),
    };
