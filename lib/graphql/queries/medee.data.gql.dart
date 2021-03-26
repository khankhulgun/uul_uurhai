// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:catalog/graphql/schema.schema.gql.dart' as _i2;
import 'package:catalog/graphql/serializers.gql.dart' as _i1;

part 'medee.data.gql.g.dart';

abstract class GpaginateMedeeData
    implements Built<GpaginateMedeeData, GpaginateMedeeDataBuilder> {
  GpaginateMedeeData._();

  factory GpaginateMedeeData([Function(GpaginateMedeeDataBuilder b) updates]) =
      _$GpaginateMedeeData;

  static void _initializeBuilder(GpaginateMedeeDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GpaginateMedeeData_paginate get paginate;
  static Serializer<GpaginateMedeeData> get serializer =>
      _$gpaginateMedeeDataSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GpaginateMedeeData.serializer, this);
  static GpaginateMedeeData fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GpaginateMedeeData.serializer, json);
}

abstract class GpaginateMedeeData_paginate
    implements
        Built<GpaginateMedeeData_paginate, GpaginateMedeeData_paginateBuilder> {
  GpaginateMedeeData_paginate._();

  factory GpaginateMedeeData_paginate(
          [Function(GpaginateMedeeData_paginateBuilder b) updates]) =
      _$GpaginateMedeeData_paginate;

  static void _initializeBuilder(GpaginateMedeeData_paginateBuilder b) =>
      b..G__typename = 'paginate';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get total;
  int get last_page;
  BuiltList<GpaginateMedeeData_paginate_ds_medee> get ds_medee;
  static Serializer<GpaginateMedeeData_paginate> get serializer =>
      _$gpaginateMedeeDataPaginateSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GpaginateMedeeData_paginate.serializer, this);
  static GpaginateMedeeData_paginate fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GpaginateMedeeData_paginate.serializer, json);
}

abstract class GpaginateMedeeData_paginate_ds_medee
    implements
        Built<GpaginateMedeeData_paginate_ds_medee,
            GpaginateMedeeData_paginate_ds_medeeBuilder> {
  GpaginateMedeeData_paginate_ds_medee._();

  factory GpaginateMedeeData_paginate_ds_medee(
          [Function(GpaginateMedeeData_paginate_ds_medeeBuilder b) updates]) =
      _$GpaginateMedeeData_paginate_ds_medee;

  static void _initializeBuilder(
          GpaginateMedeeData_paginate_ds_medeeBuilder b) =>
      b..G__typename = 'DsMedee';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  @nullable
  String get medee;
  @nullable
  String get angilal;
  @nullable
  _i2.GTime get ognoo;
  @nullable
  String get tailbar;
  static Serializer<GpaginateMedeeData_paginate_ds_medee> get serializer =>
      _$gpaginateMedeeDataPaginateDsMedeeSerializer;
  Map<String, dynamic> toJson() => _i1.serializers
      .serializeWith(GpaginateMedeeData_paginate_ds_medee.serializer, this);
  static GpaginateMedeeData_paginate_ds_medee fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GpaginateMedeeData_paginate_ds_medee.serializer, json);
}
