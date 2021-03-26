// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:catalog/graphql/serializers.gql.dart' as _i1;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

class Gcondition extends EnumClass {
  const Gcondition._(String name) : super(name);

  static const Gcondition equals = _$gconditionequals;

  static const Gcondition notEqual = _$gconditionnotEqual;

  static const Gcondition contains = _$gconditioncontains;

  static const Gcondition notContains = _$gconditionnotContains;

  static const Gcondition startsWith = _$gconditionstartsWith;

  static const Gcondition endsWith = _$gconditionendsWith;

  static const Gcondition greaterThan = _$gconditiongreaterThan;

  static const Gcondition greaterThanOrEqual = _$gconditiongreaterThanOrEqual;

  static const Gcondition lessThan = _$gconditionlessThan;

  static const Gcondition lessThanOrEqual = _$gconditionlessThanOrEqual;

  static const Gcondition isNull = _$gconditionisNull;

  static const Gcondition notNull = _$gconditionnotNull;

  static const Gcondition whereIn = _$gconditionwhereIn;

  static Serializer<Gcondition> get serializer => _$gconditionSerializer;
  static BuiltSet<Gcondition> get values => _$gconditionValues;
  static Gcondition valueOf(String name) => _$gconditionValueOf(name);
}

abstract class Gfilter implements Built<Gfilter, GfilterBuilder> {
  Gfilter._();

  factory Gfilter([Function(GfilterBuilder b) updates]) = _$Gfilter;

  String get column;
  Gcondition get condition;
  String get value;
  static Serializer<Gfilter> get serializer => _$gfilterSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(Gfilter.serializer, this);
  static Gfilter fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Gfilter.serializer, json);
}

class Gorder extends EnumClass {
  const Gorder._(String name) : super(name);

  static const Gorder asc = _$gorderasc;

  static const Gorder desc = _$gorderdesc;

  static Serializer<Gorder> get serializer => _$gorderSerializer;
  static BuiltSet<Gorder> get values => _$gorderValues;
  static Gorder valueOf(String name) => _$gorderValueOf(name);
}

abstract class Gsort implements Built<Gsort, GsortBuilder> {
  Gsort._();

  factory Gsort([Function(GsortBuilder b) updates]) = _$Gsort;

  String get column;
  Gorder get order;
  static Serializer<Gsort> get serializer => _$gsortSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(Gsort.serializer, this);
  static Gsort fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(Gsort.serializer, json);
}

abstract class GsubFilter implements Built<GsubFilter, GsubFilterBuilder> {
  GsubFilter._();

  factory GsubFilter([Function(GsubFilterBuilder b) updates]) = _$GsubFilter;

  String get column;
  String get table;
  Gcondition get condition;
  String get value;
  static Serializer<GsubFilter> get serializer => _$gsubFilterSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GsubFilter.serializer, this);
  static GsubFilter fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GsubFilter.serializer, json);
}

abstract class GsubSort implements Built<GsubSort, GsubSortBuilder> {
  GsubSort._();

  factory GsubSort([Function(GsubSortBuilder b) updates]) = _$GsubSort;

  String get column;
  String get table;
  Gorder get order;
  static Serializer<GsubSort> get serializer => _$gsubSortSerializer;
  Map<String, dynamic> toJson() =>
      _i1.serializers.serializeWith(GsubSort.serializer, this);
  static GsubSort fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GsubSort.serializer, json);
}

abstract class GTime implements Built<GTime, GTimeBuilder> {
  GTime._();

  factory GTime([String value]) =>
      _$GTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GTime> get serializer => _i2.DefaultScalarSerializer<GTime>(
      (Object serialized) => GTime(serialized));
}
