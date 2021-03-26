// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Gcondition _$gconditionequals = const Gcondition._('equals');
const Gcondition _$gconditionnotEqual = const Gcondition._('notEqual');
const Gcondition _$gconditioncontains = const Gcondition._('contains');
const Gcondition _$gconditionnotContains = const Gcondition._('notContains');
const Gcondition _$gconditionstartsWith = const Gcondition._('startsWith');
const Gcondition _$gconditionendsWith = const Gcondition._('endsWith');
const Gcondition _$gconditiongreaterThan = const Gcondition._('greaterThan');
const Gcondition _$gconditiongreaterThanOrEqual =
    const Gcondition._('greaterThanOrEqual');
const Gcondition _$gconditionlessThan = const Gcondition._('lessThan');
const Gcondition _$gconditionlessThanOrEqual =
    const Gcondition._('lessThanOrEqual');
const Gcondition _$gconditionisNull = const Gcondition._('isNull');
const Gcondition _$gconditionnotNull = const Gcondition._('notNull');
const Gcondition _$gconditionwhereIn = const Gcondition._('whereIn');

Gcondition _$gconditionValueOf(String name) {
  switch (name) {
    case 'equals':
      return _$gconditionequals;
    case 'notEqual':
      return _$gconditionnotEqual;
    case 'contains':
      return _$gconditioncontains;
    case 'notContains':
      return _$gconditionnotContains;
    case 'startsWith':
      return _$gconditionstartsWith;
    case 'endsWith':
      return _$gconditionendsWith;
    case 'greaterThan':
      return _$gconditiongreaterThan;
    case 'greaterThanOrEqual':
      return _$gconditiongreaterThanOrEqual;
    case 'lessThan':
      return _$gconditionlessThan;
    case 'lessThanOrEqual':
      return _$gconditionlessThanOrEqual;
    case 'isNull':
      return _$gconditionisNull;
    case 'notNull':
      return _$gconditionnotNull;
    case 'whereIn':
      return _$gconditionwhereIn;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Gcondition> _$gconditionValues =
    new BuiltSet<Gcondition>(const <Gcondition>[
  _$gconditionequals,
  _$gconditionnotEqual,
  _$gconditioncontains,
  _$gconditionnotContains,
  _$gconditionstartsWith,
  _$gconditionendsWith,
  _$gconditiongreaterThan,
  _$gconditiongreaterThanOrEqual,
  _$gconditionlessThan,
  _$gconditionlessThanOrEqual,
  _$gconditionisNull,
  _$gconditionnotNull,
  _$gconditionwhereIn,
]);

const Gorder _$gorderasc = const Gorder._('asc');
const Gorder _$gorderdesc = const Gorder._('desc');

Gorder _$gorderValueOf(String name) {
  switch (name) {
    case 'asc':
      return _$gorderasc;
    case 'desc':
      return _$gorderdesc;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Gorder> _$gorderValues = new BuiltSet<Gorder>(const <Gorder>[
  _$gorderasc,
  _$gorderdesc,
]);

Serializer<Gcondition> _$gconditionSerializer = new _$GconditionSerializer();
Serializer<Gfilter> _$gfilterSerializer = new _$GfilterSerializer();
Serializer<Gorder> _$gorderSerializer = new _$GorderSerializer();
Serializer<Gsort> _$gsortSerializer = new _$GsortSerializer();
Serializer<GsubFilter> _$gsubFilterSerializer = new _$GsubFilterSerializer();
Serializer<GsubSort> _$gsubSortSerializer = new _$GsubSortSerializer();

class _$GconditionSerializer implements PrimitiveSerializer<Gcondition> {
  @override
  final Iterable<Type> types = const <Type>[Gcondition];
  @override
  final String wireName = 'Gcondition';

  @override
  Object serialize(Serializers serializers, Gcondition object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Gcondition deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Gcondition.valueOf(serialized as String);
}

class _$GfilterSerializer implements StructuredSerializer<Gfilter> {
  @override
  final Iterable<Type> types = const [Gfilter, _$Gfilter];
  @override
  final String wireName = 'Gfilter';

  @override
  Iterable<Object> serialize(Serializers serializers, Gfilter object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'column',
      serializers.serialize(object.column,
          specifiedType: const FullType(String)),
      'condition',
      serializers.serialize(object.condition,
          specifiedType: const FullType(Gcondition)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gfilter deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GfilterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'column':
          result.column = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'condition':
          result.condition = serializers.deserialize(value,
              specifiedType: const FullType(Gcondition)) as Gcondition;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GorderSerializer implements PrimitiveSerializer<Gorder> {
  @override
  final Iterable<Type> types = const <Type>[Gorder];
  @override
  final String wireName = 'Gorder';

  @override
  Object serialize(Serializers serializers, Gorder object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Gorder deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Gorder.valueOf(serialized as String);
}

class _$GsortSerializer implements StructuredSerializer<Gsort> {
  @override
  final Iterable<Type> types = const [Gsort, _$Gsort];
  @override
  final String wireName = 'Gsort';

  @override
  Iterable<Object> serialize(Serializers serializers, Gsort object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'column',
      serializers.serialize(object.column,
          specifiedType: const FullType(String)),
      'order',
      serializers.serialize(object.order,
          specifiedType: const FullType(Gorder)),
    ];

    return result;
  }

  @override
  Gsort deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsortBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'column':
          result.column = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(Gorder)) as Gorder;
          break;
      }
    }

    return result.build();
  }
}

class _$GsubFilterSerializer implements StructuredSerializer<GsubFilter> {
  @override
  final Iterable<Type> types = const [GsubFilter, _$GsubFilter];
  @override
  final String wireName = 'GsubFilter';

  @override
  Iterable<Object> serialize(Serializers serializers, GsubFilter object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'column',
      serializers.serialize(object.column,
          specifiedType: const FullType(String)),
      'table',
      serializers.serialize(object.table,
          specifiedType: const FullType(String)),
      'condition',
      serializers.serialize(object.condition,
          specifiedType: const FullType(Gcondition)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GsubFilter deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsubFilterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'column':
          result.column = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'table':
          result.table = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'condition':
          result.condition = serializers.deserialize(value,
              specifiedType: const FullType(Gcondition)) as Gcondition;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GsubSortSerializer implements StructuredSerializer<GsubSort> {
  @override
  final Iterable<Type> types = const [GsubSort, _$GsubSort];
  @override
  final String wireName = 'GsubSort';

  @override
  Iterable<Object> serialize(Serializers serializers, GsubSort object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'column',
      serializers.serialize(object.column,
          specifiedType: const FullType(String)),
      'table',
      serializers.serialize(object.table,
          specifiedType: const FullType(String)),
      'order',
      serializers.serialize(object.order,
          specifiedType: const FullType(Gorder)),
    ];

    return result;
  }

  @override
  GsubSort deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsubSortBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'column':
          result.column = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'table':
          result.table = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(Gorder)) as Gorder;
          break;
      }
    }

    return result.build();
  }
}

class _$Gfilter extends Gfilter {
  @override
  final String column;
  @override
  final Gcondition condition;
  @override
  final String value;

  factory _$Gfilter([void Function(GfilterBuilder) updates]) =>
      (new GfilterBuilder()..update(updates)).build();

  _$Gfilter._({this.column, this.condition, this.value}) : super._() {
    if (column == null) {
      throw new BuiltValueNullFieldError('Gfilter', 'column');
    }
    if (condition == null) {
      throw new BuiltValueNullFieldError('Gfilter', 'condition');
    }
    if (value == null) {
      throw new BuiltValueNullFieldError('Gfilter', 'value');
    }
  }

  @override
  Gfilter rebuild(void Function(GfilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GfilterBuilder toBuilder() => new GfilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gfilter &&
        column == other.column &&
        condition == other.condition &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, column.hashCode), condition.hashCode), value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Gfilter')
          ..add('column', column)
          ..add('condition', condition)
          ..add('value', value))
        .toString();
  }
}

class GfilterBuilder implements Builder<Gfilter, GfilterBuilder> {
  _$Gfilter _$v;

  String _column;
  String get column => _$this._column;
  set column(String column) => _$this._column = column;

  Gcondition _condition;
  Gcondition get condition => _$this._condition;
  set condition(Gcondition condition) => _$this._condition = condition;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  GfilterBuilder();

  GfilterBuilder get _$this {
    if (_$v != null) {
      _column = _$v.column;
      _condition = _$v.condition;
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gfilter other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Gfilter;
  }

  @override
  void update(void Function(GfilterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Gfilter build() {
    final _$result = _$v ??
        new _$Gfilter._(column: column, condition: condition, value: value);
    replace(_$result);
    return _$result;
  }
}

class _$Gsort extends Gsort {
  @override
  final String column;
  @override
  final Gorder order;

  factory _$Gsort([void Function(GsortBuilder) updates]) =>
      (new GsortBuilder()..update(updates)).build();

  _$Gsort._({this.column, this.order}) : super._() {
    if (column == null) {
      throw new BuiltValueNullFieldError('Gsort', 'column');
    }
    if (order == null) {
      throw new BuiltValueNullFieldError('Gsort', 'order');
    }
  }

  @override
  Gsort rebuild(void Function(GsortBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsortBuilder toBuilder() => new GsortBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsort && column == other.column && order == other.order;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, column.hashCode), order.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Gsort')
          ..add('column', column)
          ..add('order', order))
        .toString();
  }
}

class GsortBuilder implements Builder<Gsort, GsortBuilder> {
  _$Gsort _$v;

  String _column;
  String get column => _$this._column;
  set column(String column) => _$this._column = column;

  Gorder _order;
  Gorder get order => _$this._order;
  set order(Gorder order) => _$this._order = order;

  GsortBuilder();

  GsortBuilder get _$this {
    if (_$v != null) {
      _column = _$v.column;
      _order = _$v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsort other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Gsort;
  }

  @override
  void update(void Function(GsortBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Gsort build() {
    final _$result = _$v ?? new _$Gsort._(column: column, order: order);
    replace(_$result);
    return _$result;
  }
}

class _$GsubFilter extends GsubFilter {
  @override
  final String column;
  @override
  final String table;
  @override
  final Gcondition condition;
  @override
  final String value;

  factory _$GsubFilter([void Function(GsubFilterBuilder) updates]) =>
      (new GsubFilterBuilder()..update(updates)).build();

  _$GsubFilter._({this.column, this.table, this.condition, this.value})
      : super._() {
    if (column == null) {
      throw new BuiltValueNullFieldError('GsubFilter', 'column');
    }
    if (table == null) {
      throw new BuiltValueNullFieldError('GsubFilter', 'table');
    }
    if (condition == null) {
      throw new BuiltValueNullFieldError('GsubFilter', 'condition');
    }
    if (value == null) {
      throw new BuiltValueNullFieldError('GsubFilter', 'value');
    }
  }

  @override
  GsubFilter rebuild(void Function(GsubFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsubFilterBuilder toBuilder() => new GsubFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsubFilter &&
        column == other.column &&
        table == other.table &&
        condition == other.condition &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, column.hashCode), table.hashCode), condition.hashCode),
        value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GsubFilter')
          ..add('column', column)
          ..add('table', table)
          ..add('condition', condition)
          ..add('value', value))
        .toString();
  }
}

class GsubFilterBuilder implements Builder<GsubFilter, GsubFilterBuilder> {
  _$GsubFilter _$v;

  String _column;
  String get column => _$this._column;
  set column(String column) => _$this._column = column;

  String _table;
  String get table => _$this._table;
  set table(String table) => _$this._table = table;

  Gcondition _condition;
  Gcondition get condition => _$this._condition;
  set condition(Gcondition condition) => _$this._condition = condition;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  GsubFilterBuilder();

  GsubFilterBuilder get _$this {
    if (_$v != null) {
      _column = _$v.column;
      _table = _$v.table;
      _condition = _$v.condition;
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsubFilter other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GsubFilter;
  }

  @override
  void update(void Function(GsubFilterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GsubFilter build() {
    final _$result = _$v ??
        new _$GsubFilter._(
            column: column, table: table, condition: condition, value: value);
    replace(_$result);
    return _$result;
  }
}

class _$GsubSort extends GsubSort {
  @override
  final String column;
  @override
  final String table;
  @override
  final Gorder order;

  factory _$GsubSort([void Function(GsubSortBuilder) updates]) =>
      (new GsubSortBuilder()..update(updates)).build();

  _$GsubSort._({this.column, this.table, this.order}) : super._() {
    if (column == null) {
      throw new BuiltValueNullFieldError('GsubSort', 'column');
    }
    if (table == null) {
      throw new BuiltValueNullFieldError('GsubSort', 'table');
    }
    if (order == null) {
      throw new BuiltValueNullFieldError('GsubSort', 'order');
    }
  }

  @override
  GsubSort rebuild(void Function(GsubSortBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsubSortBuilder toBuilder() => new GsubSortBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsubSort &&
        column == other.column &&
        table == other.table &&
        order == other.order;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, column.hashCode), table.hashCode), order.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GsubSort')
          ..add('column', column)
          ..add('table', table)
          ..add('order', order))
        .toString();
  }
}

class GsubSortBuilder implements Builder<GsubSort, GsubSortBuilder> {
  _$GsubSort _$v;

  String _column;
  String get column => _$this._column;
  set column(String column) => _$this._column = column;

  String _table;
  String get table => _$this._table;
  set table(String table) => _$this._table = table;

  Gorder _order;
  Gorder get order => _$this._order;
  set order(Gorder order) => _$this._order = order;

  GsubSortBuilder();

  GsubSortBuilder get _$this {
    if (_$v != null) {
      _column = _$v.column;
      _table = _$v.table;
      _order = _$v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsubSort other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GsubSort;
  }

  @override
  void update(void Function(GsubSortBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GsubSort build() {
    final _$result =
        _$v ?? new _$GsubSort._(column: column, table: table, order: order);
    replace(_$result);
    return _$result;
  }
}

class _$GTime extends GTime {
  @override
  final String value;

  factory _$GTime([void Function(GTimeBuilder) updates]) =>
      (new GTimeBuilder()..update(updates)).build();

  _$GTime._({this.value}) : super._() {
    if (value == null) {
      throw new BuiltValueNullFieldError('GTime', 'value');
    }
  }

  @override
  GTime rebuild(void Function(GTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTimeBuilder toBuilder() => new GTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTime && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GTime')..add('value', value))
        .toString();
  }
}

class GTimeBuilder implements Builder<GTime, GTimeBuilder> {
  _$GTime _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  GTimeBuilder();

  GTimeBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTime other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GTime;
  }

  @override
  void update(void Function(GTimeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GTime build() {
    final _$result = _$v ?? new _$GTime._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
