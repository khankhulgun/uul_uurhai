// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medee.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GpaginateMedee> _$gpaginateMedeeSerializer =
    new _$GpaginateMedeeSerializer();

class _$GpaginateMedeeSerializer
    implements StructuredSerializer<GpaginateMedee> {
  @override
  final Iterable<Type> types = const [GpaginateMedee, _$GpaginateMedee];
  @override
  final String wireName = 'GpaginateMedee';

  @override
  Iterable<Object> serialize(Serializers serializers, GpaginateMedee object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GpaginateMedeeVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i1.Operation)),
    ];

    return result;
  }

  @override
  GpaginateMedee deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpaginateMedeeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GpaginateMedeeVars))
              as _i3.GpaginateMedeeVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i1.Operation)) as _i1.Operation;
          break;
      }
    }

    return result.build();
  }
}

class _$GpaginateMedee extends GpaginateMedee {
  @override
  final _i3.GpaginateMedeeVars vars;
  @override
  final _i1.Operation operation;

  factory _$GpaginateMedee([void Function(GpaginateMedeeBuilder) updates]) =>
      (new GpaginateMedeeBuilder()..update(updates)).build();

  _$GpaginateMedee._({this.vars, this.operation}) : super._() {
    if (vars == null) {
      throw new BuiltValueNullFieldError('GpaginateMedee', 'vars');
    }
    if (operation == null) {
      throw new BuiltValueNullFieldError('GpaginateMedee', 'operation');
    }
  }

  @override
  GpaginateMedee rebuild(void Function(GpaginateMedeeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpaginateMedeeBuilder toBuilder() =>
      new GpaginateMedeeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpaginateMedee &&
        vars == other.vars &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, vars.hashCode), operation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GpaginateMedee')
          ..add('vars', vars)
          ..add('operation', operation))
        .toString();
  }
}

class GpaginateMedeeBuilder
    implements Builder<GpaginateMedee, GpaginateMedeeBuilder> {
  _$GpaginateMedee _$v;

  _i3.GpaginateMedeeVarsBuilder _vars;
  _i3.GpaginateMedeeVarsBuilder get vars =>
      _$this._vars ??= new _i3.GpaginateMedeeVarsBuilder();
  set vars(_i3.GpaginateMedeeVarsBuilder vars) => _$this._vars = vars;

  _i1.Operation _operation;
  _i1.Operation get operation => _$this._operation;
  set operation(_i1.Operation operation) => _$this._operation = operation;

  GpaginateMedeeBuilder() {
    GpaginateMedee._initializeBuilder(this);
  }

  GpaginateMedeeBuilder get _$this {
    if (_$v != null) {
      _vars = _$v.vars?.toBuilder();
      _operation = _$v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpaginateMedee other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GpaginateMedee;
  }

  @override
  void update(void Function(GpaginateMedeeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GpaginateMedee build() {
    _$GpaginateMedee _$result;
    try {
      _$result = _$v ??
          new _$GpaginateMedee._(vars: vars.build(), operation: operation);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GpaginateMedee', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
