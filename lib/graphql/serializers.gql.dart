import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:catalog/graphql/queries/medee.data.gql.dart'
    show
        GpaginateMedeeData,
        GpaginateMedeeData_paginate,
        GpaginateMedeeData_paginate_ds_medee;
import 'package:catalog/graphql/queries/medee.req.gql.dart' show GpaginateMedee;
import 'package:catalog/graphql/queries/medee.var.gql.dart'
    show GpaginateMedeeVars;
import 'package:catalog/graphql/schema.schema.gql.dart'
    show GTime, Gcondition, Gfilter, Gorder, Gsort, GsubFilter, GsubSort;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GTime,
  Gcondition,
  Gfilter,
  Gorder,
  GpaginateMedee,
  GpaginateMedeeData,
  GpaginateMedeeData_paginate,
  GpaginateMedeeData_paginate_ds_medee,
  GpaginateMedeeVars,
  Gsort,
  GsubFilter,
  GsubSort
])
final Serializers serializers = _serializersBuilder.build();
