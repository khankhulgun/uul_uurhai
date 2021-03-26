// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medee.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GpaginateMedeeData> _$gpaginateMedeeDataSerializer =
    new _$GpaginateMedeeDataSerializer();
Serializer<GpaginateMedeeData_paginate> _$gpaginateMedeeDataPaginateSerializer =
    new _$GpaginateMedeeData_paginateSerializer();
Serializer<GpaginateMedeeData_paginate_ds_medee>
    _$gpaginateMedeeDataPaginateDsMedeeSerializer =
    new _$GpaginateMedeeData_paginate_ds_medeeSerializer();

class _$GpaginateMedeeDataSerializer
    implements StructuredSerializer<GpaginateMedeeData> {
  @override
  final Iterable<Type> types = const [GpaginateMedeeData, _$GpaginateMedeeData];
  @override
  final String wireName = 'GpaginateMedeeData';

  @override
  Iterable<Object> serialize(Serializers serializers, GpaginateMedeeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'paginate',
      serializers.serialize(object.paginate,
          specifiedType: const FullType(GpaginateMedeeData_paginate)),
    ];

    return result;
  }

  @override
  GpaginateMedeeData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpaginateMedeeDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paginate':
          result.paginate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GpaginateMedeeData_paginate))
              as GpaginateMedeeData_paginate);
          break;
      }
    }

    return result.build();
  }
}

class _$GpaginateMedeeData_paginateSerializer
    implements StructuredSerializer<GpaginateMedeeData_paginate> {
  @override
  final Iterable<Type> types = const [
    GpaginateMedeeData_paginate,
    _$GpaginateMedeeData_paginate
  ];
  @override
  final String wireName = 'GpaginateMedeeData_paginate';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GpaginateMedeeData_paginate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
      'last_page',
      serializers.serialize(object.last_page,
          specifiedType: const FullType(int)),
      'ds_medee',
      serializers.serialize(object.ds_medee,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GpaginateMedeeData_paginate_ds_medee)])),
    ];

    return result;
  }

  @override
  GpaginateMedeeData_paginate deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpaginateMedeeData_paginateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_page':
          result.last_page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ds_medee':
          result.ds_medee.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GpaginateMedeeData_paginate_ds_medee)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GpaginateMedeeData_paginate_ds_medeeSerializer
    implements StructuredSerializer<GpaginateMedeeData_paginate_ds_medee> {
  @override
  final Iterable<Type> types = const [
    GpaginateMedeeData_paginate_ds_medee,
    _$GpaginateMedeeData_paginate_ds_medee
  ];
  @override
  final String wireName = 'GpaginateMedeeData_paginate_ds_medee';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GpaginateMedeeData_paginate_ds_medee object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.medee != null) {
      result
        ..add('medee')
        ..add(serializers.serialize(object.medee,
            specifiedType: const FullType(String)));
    }
    if (object.angilal != null) {
      result
        ..add('angilal')
        ..add(serializers.serialize(object.angilal,
            specifiedType: const FullType(String)));
    }
    if (object.ognoo != null) {
      result
        ..add('ognoo')
        ..add(serializers.serialize(object.ognoo,
            specifiedType: const FullType(_i2.GTime)));
    }
    if (object.tailbar != null) {
      result
        ..add('tailbar')
        ..add(serializers.serialize(object.tailbar,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GpaginateMedeeData_paginate_ds_medee deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpaginateMedeeData_paginate_ds_medeeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'medee':
          result.medee = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'angilal':
          result.angilal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ognoo':
          result.ognoo.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GTime)) as _i2.GTime);
          break;
        case 'tailbar':
          result.tailbar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GpaginateMedeeData extends GpaginateMedeeData {
  @override
  final String G__typename;
  @override
  final GpaginateMedeeData_paginate paginate;

  factory _$GpaginateMedeeData(
          [void Function(GpaginateMedeeDataBuilder) updates]) =>
      (new GpaginateMedeeDataBuilder()..update(updates)).build();

  _$GpaginateMedeeData._({this.G__typename, this.paginate}) : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError('GpaginateMedeeData', 'G__typename');
    }
    if (paginate == null) {
      throw new BuiltValueNullFieldError('GpaginateMedeeData', 'paginate');
    }
  }

  @override
  GpaginateMedeeData rebuild(
          void Function(GpaginateMedeeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpaginateMedeeDataBuilder toBuilder() =>
      new GpaginateMedeeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpaginateMedeeData &&
        G__typename == other.G__typename &&
        paginate == other.paginate;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), paginate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GpaginateMedeeData')
          ..add('G__typename', G__typename)
          ..add('paginate', paginate))
        .toString();
  }
}

class GpaginateMedeeDataBuilder
    implements Builder<GpaginateMedeeData, GpaginateMedeeDataBuilder> {
  _$GpaginateMedeeData _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  GpaginateMedeeData_paginateBuilder _paginate;
  GpaginateMedeeData_paginateBuilder get paginate =>
      _$this._paginate ??= new GpaginateMedeeData_paginateBuilder();
  set paginate(GpaginateMedeeData_paginateBuilder paginate) =>
      _$this._paginate = paginate;

  GpaginateMedeeDataBuilder() {
    GpaginateMedeeData._initializeBuilder(this);
  }

  GpaginateMedeeDataBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _paginate = _$v.paginate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpaginateMedeeData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GpaginateMedeeData;
  }

  @override
  void update(void Function(GpaginateMedeeDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GpaginateMedeeData build() {
    _$GpaginateMedeeData _$result;
    try {
      _$result = _$v ??
          new _$GpaginateMedeeData._(
              G__typename: G__typename, paginate: paginate.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'paginate';
        paginate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GpaginateMedeeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GpaginateMedeeData_paginate extends GpaginateMedeeData_paginate {
  @override
  final String G__typename;
  @override
  final int total;
  @override
  final int last_page;
  @override
  final BuiltList<GpaginateMedeeData_paginate_ds_medee> ds_medee;

  factory _$GpaginateMedeeData_paginate(
          [void Function(GpaginateMedeeData_paginateBuilder) updates]) =>
      (new GpaginateMedeeData_paginateBuilder()..update(updates)).build();

  _$GpaginateMedeeData_paginate._(
      {this.G__typename, this.total, this.last_page, this.ds_medee})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GpaginateMedeeData_paginate', 'G__typename');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError(
          'GpaginateMedeeData_paginate', 'total');
    }
    if (last_page == null) {
      throw new BuiltValueNullFieldError(
          'GpaginateMedeeData_paginate', 'last_page');
    }
    if (ds_medee == null) {
      throw new BuiltValueNullFieldError(
          'GpaginateMedeeData_paginate', 'ds_medee');
    }
  }

  @override
  GpaginateMedeeData_paginate rebuild(
          void Function(GpaginateMedeeData_paginateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpaginateMedeeData_paginateBuilder toBuilder() =>
      new GpaginateMedeeData_paginateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpaginateMedeeData_paginate &&
        G__typename == other.G__typename &&
        total == other.total &&
        last_page == other.last_page &&
        ds_medee == other.ds_medee;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), total.hashCode),
            last_page.hashCode),
        ds_medee.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GpaginateMedeeData_paginate')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('last_page', last_page)
          ..add('ds_medee', ds_medee))
        .toString();
  }
}

class GpaginateMedeeData_paginateBuilder
    implements
        Builder<GpaginateMedeeData_paginate,
            GpaginateMedeeData_paginateBuilder> {
  _$GpaginateMedeeData_paginate _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _last_page;
  int get last_page => _$this._last_page;
  set last_page(int last_page) => _$this._last_page = last_page;

  ListBuilder<GpaginateMedeeData_paginate_ds_medee> _ds_medee;
  ListBuilder<GpaginateMedeeData_paginate_ds_medee> get ds_medee =>
      _$this._ds_medee ??=
          new ListBuilder<GpaginateMedeeData_paginate_ds_medee>();
  set ds_medee(ListBuilder<GpaginateMedeeData_paginate_ds_medee> ds_medee) =>
      _$this._ds_medee = ds_medee;

  GpaginateMedeeData_paginateBuilder() {
    GpaginateMedeeData_paginate._initializeBuilder(this);
  }

  GpaginateMedeeData_paginateBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _total = _$v.total;
      _last_page = _$v.last_page;
      _ds_medee = _$v.ds_medee?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpaginateMedeeData_paginate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GpaginateMedeeData_paginate;
  }

  @override
  void update(void Function(GpaginateMedeeData_paginateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GpaginateMedeeData_paginate build() {
    _$GpaginateMedeeData_paginate _$result;
    try {
      _$result = _$v ??
          new _$GpaginateMedeeData_paginate._(
              G__typename: G__typename,
              total: total,
              last_page: last_page,
              ds_medee: ds_medee.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ds_medee';
        ds_medee.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GpaginateMedeeData_paginate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GpaginateMedeeData_paginate_ds_medee
    extends GpaginateMedeeData_paginate_ds_medee {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String medee;
  @override
  final String angilal;
  @override
  final _i2.GTime ognoo;
  @override
  final String tailbar;

  factory _$GpaginateMedeeData_paginate_ds_medee(
          [void Function(GpaginateMedeeData_paginate_ds_medeeBuilder)
              updates]) =>
      (new GpaginateMedeeData_paginate_ds_medeeBuilder()..update(updates))
          .build();

  _$GpaginateMedeeData_paginate_ds_medee._(
      {this.G__typename,
      this.id,
      this.medee,
      this.angilal,
      this.ognoo,
      this.tailbar})
      : super._() {
    if (G__typename == null) {
      throw new BuiltValueNullFieldError(
          'GpaginateMedeeData_paginate_ds_medee', 'G__typename');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError(
          'GpaginateMedeeData_paginate_ds_medee', 'id');
    }
  }

  @override
  GpaginateMedeeData_paginate_ds_medee rebuild(
          void Function(GpaginateMedeeData_paginate_ds_medeeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpaginateMedeeData_paginate_ds_medeeBuilder toBuilder() =>
      new GpaginateMedeeData_paginate_ds_medeeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpaginateMedeeData_paginate_ds_medee &&
        G__typename == other.G__typename &&
        id == other.id &&
        medee == other.medee &&
        angilal == other.angilal &&
        ognoo == other.ognoo &&
        tailbar == other.tailbar;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    medee.hashCode),
                angilal.hashCode),
            ognoo.hashCode),
        tailbar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GpaginateMedeeData_paginate_ds_medee')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('medee', medee)
          ..add('angilal', angilal)
          ..add('ognoo', ognoo)
          ..add('tailbar', tailbar))
        .toString();
  }
}

class GpaginateMedeeData_paginate_ds_medeeBuilder
    implements
        Builder<GpaginateMedeeData_paginate_ds_medee,
            GpaginateMedeeData_paginate_ds_medeeBuilder> {
  _$GpaginateMedeeData_paginate_ds_medee _$v;

  String _G__typename;
  String get G__typename => _$this._G__typename;
  set G__typename(String G__typename) => _$this._G__typename = G__typename;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _medee;
  String get medee => _$this._medee;
  set medee(String medee) => _$this._medee = medee;

  String _angilal;
  String get angilal => _$this._angilal;
  set angilal(String angilal) => _$this._angilal = angilal;

  _i2.GTimeBuilder _ognoo;
  _i2.GTimeBuilder get ognoo => _$this._ognoo ??= new _i2.GTimeBuilder();
  set ognoo(_i2.GTimeBuilder ognoo) => _$this._ognoo = ognoo;

  String _tailbar;
  String get tailbar => _$this._tailbar;
  set tailbar(String tailbar) => _$this._tailbar = tailbar;

  GpaginateMedeeData_paginate_ds_medeeBuilder() {
    GpaginateMedeeData_paginate_ds_medee._initializeBuilder(this);
  }

  GpaginateMedeeData_paginate_ds_medeeBuilder get _$this {
    if (_$v != null) {
      _G__typename = _$v.G__typename;
      _id = _$v.id;
      _medee = _$v.medee;
      _angilal = _$v.angilal;
      _ognoo = _$v.ognoo?.toBuilder();
      _tailbar = _$v.tailbar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpaginateMedeeData_paginate_ds_medee other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GpaginateMedeeData_paginate_ds_medee;
  }

  @override
  void update(
      void Function(GpaginateMedeeData_paginate_ds_medeeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GpaginateMedeeData_paginate_ds_medee build() {
    _$GpaginateMedeeData_paginate_ds_medee _$result;
    try {
      _$result = _$v ??
          new _$GpaginateMedeeData_paginate_ds_medee._(
              G__typename: G__typename,
              id: id,
              medee: medee,
              angilal: angilal,
              ognoo: _ognoo?.build(),
              tailbar: tailbar);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ognoo';
        _ognoo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GpaginateMedeeData_paginate_ds_medee',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
