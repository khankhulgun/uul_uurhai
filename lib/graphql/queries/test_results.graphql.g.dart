// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_results.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestResults$Query$TestResults _$TestResults$Query$TestResultsFromJson(
    Map<String, dynamic> json) {
  return TestResults$Query$TestResults()
    ..id = json['id'] as int
    ..testTitle = json['test_title'] as String
    ..conclution = json['conclution'] as String;
}

Map<String, dynamic> _$TestResults$Query$TestResultsToJson(
        TestResults$Query$TestResults instance) =>
    <String, dynamic>{
      'id': instance.id,
      'test_title': instance.testTitle,
      'conclution': instance.conclution,
    };

TestResults$Query _$TestResults$QueryFromJson(Map<String, dynamic> json) {
  return TestResults$Query()
    ..testResults = (json['test_results'] as List)
        ?.map((e) => e == null
            ? null
            : TestResults$Query$TestResults.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TestResults$QueryToJson(TestResults$Query instance) =>
    <String, dynamic>{
      'test_results': instance.testResults?.map((e) => e?.toJson())?.toList(),
    };

TestResultsArguments _$TestResultsArgumentsFromJson(Map<String, dynamic> json) {
  return TestResultsArguments(
    user_id: json['user_id'] as String,
  );
}

Map<String, dynamic> _$TestResultsArgumentsToJson(
        TestResultsArguments instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
    };
