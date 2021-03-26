// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medee.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GpaginateMedeeVars> _$gpaginateMedeeVarsSerializer =
    new _$GpaginateMedeeVarsSerializer();

class _$GpaginateMedeeVarsSerializer
    implements StructuredSerializer<GpaginateMedeeVars> {
  @override
  final Iterable<Type> types = const [GpaginateMedeeVars, _$GpaginateMedeeVars];
  @override
  final String wireName = 'GpaginateMedeeVars';

  @override
  Iterable<Object> serialize(Serializers serializers, GpaginateMedeeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'size',
      serializers.serialize(object.size, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GpaginateMedeeVars deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpaginateMedeeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GpaginateMedeeVars extends GpaginateMedeeVars {
  @override
  final int page;
  @override
  final int size;

  factory _$GpaginateMedeeVars(
          [void Function(GpaginateMedeeVarsBuilder) updates]) =>
      (new GpaginateMedeeVarsBuilder()..update(updates)).build();

  _$GpaginateMedeeVars._({this.page, this.size}) : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('GpaginateMedeeVars', 'page');
    }
    if (size == null) {
      throw new BuiltValueNullFieldError('GpaginateMedeeVars', 'size');
    }
  }

  @override
  GpaginateMedeeVars rebuild(
          void Function(GpaginateMedeeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpaginateMedeeVarsBuilder toBuilder() =>
      new GpaginateMedeeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpaginateMedeeVars &&
        page == other.page &&
        size == other.size;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, page.hashCode), size.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GpaginateMedeeVars')
          ..add('page', page)
          ..add('size', size))
        .toString();
  }
}

class GpaginateMedeeVarsBuilder
    implements Builder<GpaginateMedeeVars, GpaginateMedeeVarsBuilder> {
  _$GpaginateMedeeVars _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  GpaginateMedeeVarsBuilder();

  GpaginateMedeeVarsBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _size = _$v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpaginateMedeeVars other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GpaginateMedeeVars;
  }

  @override
  void update(void Function(GpaginateMedeeVarsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GpaginateMedeeVars build() {
    final _$result = _$v ?? new _$GpaginateMedeeVars._(page: page, size: size);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
