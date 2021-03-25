// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Test$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes
    _$Test$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswesFromJson(
        Map<String, dynamic> json) {
  return Test$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes()
    ..id = json['id'] as int
    ..answers = json['answers'] as String
    ..questionsId = json['questions_id'] as int
    ..isSelected = json['is_selected'] as int;
}

Map<String, dynamic>
    _$Test$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswesToJson(
            Test$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'answers': instance.answers,
          'questions_id': instance.questionsId,
          'is_selected': instance.isSelected,
        };

Test$Query$StemTest$SubFormTestQuestions
    _$Test$Query$StemTest$SubFormTestQuestionsFromJson(
        Map<String, dynamic> json) {
  return Test$Query$StemTest$SubFormTestQuestions()
    ..id = json['id'] as int
    ..testId = json['test_id'] as int
    ..questions = json['questions'] as String
    ..subFormTestQuestionsAnswes = (json['sub_form_test_questions_answes']
            as List)
        ?.map((e) => e == null
            ? null
            : Test$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Test$Query$StemTest$SubFormTestQuestionsToJson(
        Test$Query$StemTest$SubFormTestQuestions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'test_id': instance.testId,
      'questions': instance.questions,
      'sub_form_test_questions_answes': instance.subFormTestQuestionsAnswes
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

Test$Query$StemTest _$Test$Query$StemTestFromJson(Map<String, dynamic> json) {
  return Test$Query$StemTest()
    ..id = json['id'] as int
    ..catId = json['cat_id'] as int
    ..posterUpload = json['poster_upload'] as String
    ..title = json['title'] as String
    ..subFormTestQuestions = (json['sub_form_test_questions'] as List)
        ?.map((e) => e == null
            ? null
            : Test$Query$StemTest$SubFormTestQuestions.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Test$Query$StemTestToJson(
        Test$Query$StemTest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cat_id': instance.catId,
      'poster_upload': instance.posterUpload,
      'title': instance.title,
      'sub_form_test_questions':
          instance.subFormTestQuestions?.map((e) => e?.toJson())?.toList(),
    };

Test$Query _$Test$QueryFromJson(Map<String, dynamic> json) {
  return Test$Query()
    ..stemTest = (json['stem_test'] as List)
        ?.map((e) => e == null
            ? null
            : Test$Query$StemTest.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Test$QueryToJson(Test$Query instance) =>
    <String, dynamic>{
      'stem_test': instance.stemTest?.map((e) => e?.toJson())?.toList(),
    };

TestArguments _$TestArgumentsFromJson(Map<String, dynamic> json) {
  return TestArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$TestArgumentsToJson(TestArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
