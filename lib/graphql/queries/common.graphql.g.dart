// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Common$Query$LutAshigtMaltmal _$Common$Query$LutAshigtMaltmalFromJson(
    Map<String, dynamic> json) {
  return Common$Query$LutAshigtMaltmal()
    ..id = json['id'] as int
    ..ashigtMaltmal = json['ashigt_maltmal'] as String;
}

Map<String, dynamic> _$Common$Query$LutAshigtMaltmalToJson(
        Common$Query$LutAshigtMaltmal instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ashigt_maltmal': instance.ashigtMaltmal,
    };

Common$Query _$Common$QueryFromJson(Map<String, dynamic> json) {
  return Common$Query()
    ..lutAshigtMaltmal = (json['lut_ashigt_maltmal'] as List)
        ?.map((e) => e == null
            ? null
            : Common$Query$LutAshigtMaltmal.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Common$QueryToJson(Common$Query instance) =>
    <String, dynamic>{
      'lut_ashigt_maltmal':
          instance.lutAshigtMaltmal?.map((e) => e?.toJson())?.toList(),
    };
