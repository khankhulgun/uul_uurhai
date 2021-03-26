// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:catalog/graphql/queries/medee.ast.gql.dart' as _i2;
import 'package:catalog/graphql/queries/medee.var.gql.dart' as _i3;
import 'package:catalog/graphql/serializers.gql.dart' as _i4;
import 'package:gql_exec/gql_exec.dart' as _i1;

part 'medee.req.gql.g.dart';

abstract class GpaginateMedee
    implements Built<GpaginateMedee, GpaginateMedeeBuilder> {
  GpaginateMedee._();

  factory GpaginateMedee([Function(GpaginateMedeeBuilder b) updates]) =
      _$GpaginateMedee;

  static void _initializeBuilder(GpaginateMedeeBuilder b) => b
    ..operation =
        _i1.Operation(document: _i2.document, operationName: 'paginateMedee');
  _i3.GpaginateMedeeVars get vars;
  _i1.Operation get operation;
  static Serializer<GpaginateMedee> get serializer =>
      _$gpaginateMedeeSerializer;
  Map<String, dynamic> toJson() =>
      _i4.serializers.serializeWith(GpaginateMedee.serializer, this);
  static GpaginateMedee fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(GpaginateMedee.serializer, json);
}
