// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:catalog/graphql/serializers.gql.dart' as _i1;

part 'medee.var.gql.g.dart';

abstract class GpaginateMedeeVars
    implements Built<GpaginateMedeeVars, GpaginateMedeeVarsBuilder> {
  GpaginateMedeeVars._();

  factory GpaginateMedeeVars([Function(GpaginateMedeeVarsBuilder b) updates]) =
      _$GpaginateMedeeVars;

  int get page;
  int get size;
  static Serializer<GpaginateMedeeVars> get serializer =>
      _$gpaginateMedeeVarsSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GpaginateMedeeVars.serializer, this);
  static GpaginateMedeeVars fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GpaginateMedeeVars.serializer, json);
}
