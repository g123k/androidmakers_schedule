// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GConferenceField _$gConferenceFieldDAYS =
    const GConferenceField._('DAYS');

GConferenceField _$gConferenceFieldValueOf(String name) {
  switch (name) {
    case 'DAYS':
      return _$gConferenceFieldDAYS;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GConferenceField> _$gConferenceFieldValues =
    new BuiltSet<GConferenceField>(const <GConferenceField>[
  _$gConferenceFieldDAYS,
]);

const GLinkType _$gLinkTypeYouTube = const GLinkType._('YouTube');
const GLinkType _$gLinkTypeAudio = const GLinkType._('Audio');
const GLinkType _$gLinkTypeAudioUncompressed =
    const GLinkType._('AudioUncompressed');
const GLinkType _$gLinkTypeOther = const GLinkType._('Other');

GLinkType _$gLinkTypeValueOf(String name) {
  switch (name) {
    case 'YouTube':
      return _$gLinkTypeYouTube;
    case 'Audio':
      return _$gLinkTypeAudio;
    case 'AudioUncompressed':
      return _$gLinkTypeAudioUncompressed;
    case 'Other':
      return _$gLinkTypeOther;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GLinkType> _$gLinkTypeValues =
    new BuiltSet<GLinkType>(const <GLinkType>[
  _$gLinkTypeYouTube,
  _$gLinkTypeAudio,
  _$gLinkTypeAudioUncompressed,
  _$gLinkTypeOther,
]);

const GOrderByDirection _$gOrderByDirectionASCENDING =
    const GOrderByDirection._('ASCENDING');
const GOrderByDirection _$gOrderByDirectionDESCENDING =
    const GOrderByDirection._('DESCENDING');

GOrderByDirection _$gOrderByDirectionValueOf(String name) {
  switch (name) {
    case 'ASCENDING':
      return _$gOrderByDirectionASCENDING;
    case 'DESCENDING':
      return _$gOrderByDirectionDESCENDING;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GOrderByDirection> _$gOrderByDirectionValues =
    new BuiltSet<GOrderByDirection>(const <GOrderByDirection>[
  _$gOrderByDirectionASCENDING,
  _$gOrderByDirectionDESCENDING,
]);

const GSessionField _$gSessionFieldSTARTS_AT =
    const GSessionField._('STARTS_AT');

GSessionField _$gSessionFieldValueOf(String name) {
  switch (name) {
    case 'STARTS_AT':
      return _$gSessionFieldSTARTS_AT;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GSessionField> _$gSessionFieldValues =
    new BuiltSet<GSessionField>(const <GSessionField>[
  _$gSessionFieldSTARTS_AT,
]);

Serializer<GConferenceField> _$gConferenceFieldSerializer =
    new _$GConferenceFieldSerializer();
Serializer<GConferenceOrderByInput> _$gConferenceOrderByInputSerializer =
    new _$GConferenceOrderByInputSerializer();
Serializer<GLinkType> _$gLinkTypeSerializer = new _$GLinkTypeSerializer();
Serializer<GLocalDateTimeFilterInput> _$gLocalDateTimeFilterInputSerializer =
    new _$GLocalDateTimeFilterInputSerializer();
Serializer<GOrderByDirection> _$gOrderByDirectionSerializer =
    new _$GOrderByDirectionSerializer();
Serializer<GSessionField> _$gSessionFieldSerializer =
    new _$GSessionFieldSerializer();
Serializer<GSessionFilterInput> _$gSessionFilterInputSerializer =
    new _$GSessionFilterInputSerializer();
Serializer<GSessionOrderByInput> _$gSessionOrderByInputSerializer =
    new _$GSessionOrderByInputSerializer();

class _$GConferenceFieldSerializer
    implements PrimitiveSerializer<GConferenceField> {
  @override
  final Iterable<Type> types = const <Type>[GConferenceField];
  @override
  final String wireName = 'GConferenceField';

  @override
  Object serialize(Serializers serializers, GConferenceField object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GConferenceField deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GConferenceField.valueOf(serialized as String);
}

class _$GConferenceOrderByInputSerializer
    implements StructuredSerializer<GConferenceOrderByInput> {
  @override
  final Iterable<Type> types = const [
    GConferenceOrderByInput,
    _$GConferenceOrderByInput
  ];
  @override
  final String wireName = 'GConferenceOrderByInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GConferenceOrderByInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'direction',
      serializers.serialize(object.direction,
          specifiedType: const FullType(GOrderByDirection)),
      'field',
      serializers.serialize(object.field,
          specifiedType: const FullType(GConferenceField)),
    ];

    return result;
  }

  @override
  GConferenceOrderByInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GConferenceOrderByInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'direction':
          result.direction = serializers.deserialize(value,
                  specifiedType: const FullType(GOrderByDirection))!
              as GOrderByDirection;
          break;
        case 'field':
          result.field = serializers.deserialize(value,
                  specifiedType: const FullType(GConferenceField))!
              as GConferenceField;
          break;
      }
    }

    return result.build();
  }
}

class _$GLinkTypeSerializer implements PrimitiveSerializer<GLinkType> {
  @override
  final Iterable<Type> types = const <Type>[GLinkType];
  @override
  final String wireName = 'GLinkType';

  @override
  Object serialize(Serializers serializers, GLinkType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GLinkType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GLinkType.valueOf(serialized as String);
}

class _$GLocalDateTimeFilterInputSerializer
    implements StructuredSerializer<GLocalDateTimeFilterInput> {
  @override
  final Iterable<Type> types = const [
    GLocalDateTimeFilterInput,
    _$GLocalDateTimeFilterInput
  ];
  @override
  final String wireName = 'GLocalDateTimeFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLocalDateTimeFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.after;
    if (value != null) {
      result
        ..add('after')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLocalDateTime)));
    }
    value = object.before;
    if (value != null) {
      result
        ..add('before')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLocalDateTime)));
    }
    return result;
  }

  @override
  GLocalDateTimeFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocalDateTimeFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'after':
          result.after.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLocalDateTime))!
              as GLocalDateTime);
          break;
        case 'before':
          result.before.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLocalDateTime))!
              as GLocalDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GOrderByDirectionSerializer
    implements PrimitiveSerializer<GOrderByDirection> {
  @override
  final Iterable<Type> types = const <Type>[GOrderByDirection];
  @override
  final String wireName = 'GOrderByDirection';

  @override
  Object serialize(Serializers serializers, GOrderByDirection object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GOrderByDirection deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GOrderByDirection.valueOf(serialized as String);
}

class _$GSessionFieldSerializer implements PrimitiveSerializer<GSessionField> {
  @override
  final Iterable<Type> types = const <Type>[GSessionField];
  @override
  final String wireName = 'GSessionField';

  @override
  Object serialize(Serializers serializers, GSessionField object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GSessionField deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GSessionField.valueOf(serialized as String);
}

class _$GSessionFilterInputSerializer
    implements StructuredSerializer<GSessionFilterInput> {
  @override
  final Iterable<Type> types = const [
    GSessionFilterInput,
    _$GSessionFilterInput
  ];
  @override
  final String wireName = 'GSessionFilterInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSessionFilterInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.endsAt;
    if (value != null) {
      result
        ..add('endsAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLocalDateTimeFilterInput)));
    }
    value = object.startsAt;
    if (value != null) {
      result
        ..add('startsAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLocalDateTimeFilterInput)));
    }
    return result;
  }

  @override
  GSessionFilterInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSessionFilterInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'endsAt':
          result.endsAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLocalDateTimeFilterInput))!
              as GLocalDateTimeFilterInput);
          break;
        case 'startsAt':
          result.startsAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLocalDateTimeFilterInput))!
              as GLocalDateTimeFilterInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GSessionOrderByInputSerializer
    implements StructuredSerializer<GSessionOrderByInput> {
  @override
  final Iterable<Type> types = const [
    GSessionOrderByInput,
    _$GSessionOrderByInput
  ];
  @override
  final String wireName = 'GSessionOrderByInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSessionOrderByInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'direction',
      serializers.serialize(object.direction,
          specifiedType: const FullType(GOrderByDirection)),
      'field',
      serializers.serialize(object.field,
          specifiedType: const FullType(GSessionField)),
    ];

    return result;
  }

  @override
  GSessionOrderByInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSessionOrderByInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'direction':
          result.direction = serializers.deserialize(value,
                  specifiedType: const FullType(GOrderByDirection))!
              as GOrderByDirection;
          break;
        case 'field':
          result.field = serializers.deserialize(value,
              specifiedType: const FullType(GSessionField))! as GSessionField;
          break;
      }
    }

    return result.build();
  }
}

class _$GConferenceOrderByInput extends GConferenceOrderByInput {
  @override
  final GOrderByDirection direction;
  @override
  final GConferenceField field;

  factory _$GConferenceOrderByInput(
          [void Function(GConferenceOrderByInputBuilder)? updates]) =>
      (new GConferenceOrderByInputBuilder()..update(updates))._build();

  _$GConferenceOrderByInput._({required this.direction, required this.field})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        direction, r'GConferenceOrderByInput', 'direction');
    BuiltValueNullFieldError.checkNotNull(
        field, r'GConferenceOrderByInput', 'field');
  }

  @override
  GConferenceOrderByInput rebuild(
          void Function(GConferenceOrderByInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GConferenceOrderByInputBuilder toBuilder() =>
      new GConferenceOrderByInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GConferenceOrderByInput &&
        direction == other.direction &&
        field == other.field;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, field.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GConferenceOrderByInput')
          ..add('direction', direction)
          ..add('field', field))
        .toString();
  }
}

class GConferenceOrderByInputBuilder
    implements
        Builder<GConferenceOrderByInput, GConferenceOrderByInputBuilder> {
  _$GConferenceOrderByInput? _$v;

  GOrderByDirection? _direction;
  GOrderByDirection? get direction => _$this._direction;
  set direction(GOrderByDirection? direction) => _$this._direction = direction;

  GConferenceField? _field;
  GConferenceField? get field => _$this._field;
  set field(GConferenceField? field) => _$this._field = field;

  GConferenceOrderByInputBuilder();

  GConferenceOrderByInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _direction = $v.direction;
      _field = $v.field;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GConferenceOrderByInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GConferenceOrderByInput;
  }

  @override
  void update(void Function(GConferenceOrderByInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GConferenceOrderByInput build() => _build();

  _$GConferenceOrderByInput _build() {
    final _$result = _$v ??
        new _$GConferenceOrderByInput._(
            direction: BuiltValueNullFieldError.checkNotNull(
                direction, r'GConferenceOrderByInput', 'direction'),
            field: BuiltValueNullFieldError.checkNotNull(
                field, r'GConferenceOrderByInput', 'field'));
    replace(_$result);
    return _$result;
  }
}

class _$GInstant extends GInstant {
  @override
  final String value;

  factory _$GInstant([void Function(GInstantBuilder)? updates]) =>
      (new GInstantBuilder()..update(updates))._build();

  _$GInstant._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GInstant', 'value');
  }

  @override
  GInstant rebuild(void Function(GInstantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInstantBuilder toBuilder() => new GInstantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInstant && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GInstant')..add('value', value))
        .toString();
  }
}

class GInstantBuilder implements Builder<GInstant, GInstantBuilder> {
  _$GInstant? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GInstantBuilder();

  GInstantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInstant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInstant;
  }

  @override
  void update(void Function(GInstantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInstant build() => _build();

  _$GInstant _build() {
    final _$result = _$v ??
        new _$GInstant._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GInstant', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GLocalDate extends GLocalDate {
  @override
  final String value;

  factory _$GLocalDate([void Function(GLocalDateBuilder)? updates]) =>
      (new GLocalDateBuilder()..update(updates))._build();

  _$GLocalDate._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GLocalDate', 'value');
  }

  @override
  GLocalDate rebuild(void Function(GLocalDateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocalDateBuilder toBuilder() => new GLocalDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocalDate && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLocalDate')..add('value', value))
        .toString();
  }
}

class GLocalDateBuilder implements Builder<GLocalDate, GLocalDateBuilder> {
  _$GLocalDate? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GLocalDateBuilder();

  GLocalDateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocalDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocalDate;
  }

  @override
  void update(void Function(GLocalDateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocalDate build() => _build();

  _$GLocalDate _build() {
    final _$result = _$v ??
        new _$GLocalDate._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GLocalDate', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GLocalDateTime extends GLocalDateTime {
  @override
  final String value;

  factory _$GLocalDateTime([void Function(GLocalDateTimeBuilder)? updates]) =>
      (new GLocalDateTimeBuilder()..update(updates))._build();

  _$GLocalDateTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GLocalDateTime', 'value');
  }

  @override
  GLocalDateTime rebuild(void Function(GLocalDateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocalDateTimeBuilder toBuilder() =>
      new GLocalDateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocalDateTime && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLocalDateTime')..add('value', value))
        .toString();
  }
}

class GLocalDateTimeBuilder
    implements Builder<GLocalDateTime, GLocalDateTimeBuilder> {
  _$GLocalDateTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GLocalDateTimeBuilder();

  GLocalDateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocalDateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocalDateTime;
  }

  @override
  void update(void Function(GLocalDateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocalDateTime build() => _build();

  _$GLocalDateTime _build() {
    final _$result = _$v ??
        new _$GLocalDateTime._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GLocalDateTime', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GLocalDateTimeFilterInput extends GLocalDateTimeFilterInput {
  @override
  final GLocalDateTime? after;
  @override
  final GLocalDateTime? before;

  factory _$GLocalDateTimeFilterInput(
          [void Function(GLocalDateTimeFilterInputBuilder)? updates]) =>
      (new GLocalDateTimeFilterInputBuilder()..update(updates))._build();

  _$GLocalDateTimeFilterInput._({this.after, this.before}) : super._();

  @override
  GLocalDateTimeFilterInput rebuild(
          void Function(GLocalDateTimeFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocalDateTimeFilterInputBuilder toBuilder() =>
      new GLocalDateTimeFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocalDateTimeFilterInput &&
        after == other.after &&
        before == other.before;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jc(_$hash, before.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLocalDateTimeFilterInput')
          ..add('after', after)
          ..add('before', before))
        .toString();
  }
}

class GLocalDateTimeFilterInputBuilder
    implements
        Builder<GLocalDateTimeFilterInput, GLocalDateTimeFilterInputBuilder> {
  _$GLocalDateTimeFilterInput? _$v;

  GLocalDateTimeBuilder? _after;
  GLocalDateTimeBuilder get after =>
      _$this._after ??= new GLocalDateTimeBuilder();
  set after(GLocalDateTimeBuilder? after) => _$this._after = after;

  GLocalDateTimeBuilder? _before;
  GLocalDateTimeBuilder get before =>
      _$this._before ??= new GLocalDateTimeBuilder();
  set before(GLocalDateTimeBuilder? before) => _$this._before = before;

  GLocalDateTimeFilterInputBuilder();

  GLocalDateTimeFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _after = $v.after?.toBuilder();
      _before = $v.before?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocalDateTimeFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocalDateTimeFilterInput;
  }

  @override
  void update(void Function(GLocalDateTimeFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocalDateTimeFilterInput build() => _build();

  _$GLocalDateTimeFilterInput _build() {
    _$GLocalDateTimeFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GLocalDateTimeFilterInput._(
              after: _after?.build(), before: _before?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'after';
        _after?.build();
        _$failedField = 'before';
        _before?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLocalDateTimeFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSessionFilterInput extends GSessionFilterInput {
  @override
  final GLocalDateTimeFilterInput? endsAt;
  @override
  final GLocalDateTimeFilterInput? startsAt;

  factory _$GSessionFilterInput(
          [void Function(GSessionFilterInputBuilder)? updates]) =>
      (new GSessionFilterInputBuilder()..update(updates))._build();

  _$GSessionFilterInput._({this.endsAt, this.startsAt}) : super._();

  @override
  GSessionFilterInput rebuild(
          void Function(GSessionFilterInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSessionFilterInputBuilder toBuilder() =>
      new GSessionFilterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSessionFilterInput &&
        endsAt == other.endsAt &&
        startsAt == other.startsAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endsAt.hashCode);
    _$hash = $jc(_$hash, startsAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSessionFilterInput')
          ..add('endsAt', endsAt)
          ..add('startsAt', startsAt))
        .toString();
  }
}

class GSessionFilterInputBuilder
    implements Builder<GSessionFilterInput, GSessionFilterInputBuilder> {
  _$GSessionFilterInput? _$v;

  GLocalDateTimeFilterInputBuilder? _endsAt;
  GLocalDateTimeFilterInputBuilder get endsAt =>
      _$this._endsAt ??= new GLocalDateTimeFilterInputBuilder();
  set endsAt(GLocalDateTimeFilterInputBuilder? endsAt) =>
      _$this._endsAt = endsAt;

  GLocalDateTimeFilterInputBuilder? _startsAt;
  GLocalDateTimeFilterInputBuilder get startsAt =>
      _$this._startsAt ??= new GLocalDateTimeFilterInputBuilder();
  set startsAt(GLocalDateTimeFilterInputBuilder? startsAt) =>
      _$this._startsAt = startsAt;

  GSessionFilterInputBuilder();

  GSessionFilterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endsAt = $v.endsAt?.toBuilder();
      _startsAt = $v.startsAt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSessionFilterInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSessionFilterInput;
  }

  @override
  void update(void Function(GSessionFilterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSessionFilterInput build() => _build();

  _$GSessionFilterInput _build() {
    _$GSessionFilterInput _$result;
    try {
      _$result = _$v ??
          new _$GSessionFilterInput._(
              endsAt: _endsAt?.build(), startsAt: _startsAt?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endsAt';
        _endsAt?.build();
        _$failedField = 'startsAt';
        _startsAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSessionFilterInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSessionOrderByInput extends GSessionOrderByInput {
  @override
  final GOrderByDirection direction;
  @override
  final GSessionField field;

  factory _$GSessionOrderByInput(
          [void Function(GSessionOrderByInputBuilder)? updates]) =>
      (new GSessionOrderByInputBuilder()..update(updates))._build();

  _$GSessionOrderByInput._({required this.direction, required this.field})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        direction, r'GSessionOrderByInput', 'direction');
    BuiltValueNullFieldError.checkNotNull(
        field, r'GSessionOrderByInput', 'field');
  }

  @override
  GSessionOrderByInput rebuild(
          void Function(GSessionOrderByInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSessionOrderByInputBuilder toBuilder() =>
      new GSessionOrderByInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSessionOrderByInput &&
        direction == other.direction &&
        field == other.field;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, field.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSessionOrderByInput')
          ..add('direction', direction)
          ..add('field', field))
        .toString();
  }
}

class GSessionOrderByInputBuilder
    implements Builder<GSessionOrderByInput, GSessionOrderByInputBuilder> {
  _$GSessionOrderByInput? _$v;

  GOrderByDirection? _direction;
  GOrderByDirection? get direction => _$this._direction;
  set direction(GOrderByDirection? direction) => _$this._direction = direction;

  GSessionField? _field;
  GSessionField? get field => _$this._field;
  set field(GSessionField? field) => _$this._field = field;

  GSessionOrderByInputBuilder();

  GSessionOrderByInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _direction = $v.direction;
      _field = $v.field;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSessionOrderByInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSessionOrderByInput;
  }

  @override
  void update(void Function(GSessionOrderByInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSessionOrderByInput build() => _build();

  _$GSessionOrderByInput _build() {
    final _$result = _$v ??
        new _$GSessionOrderByInput._(
            direction: BuiltValueNullFieldError.checkNotNull(
                direction, r'GSessionOrderByInput', 'direction'),
            field: BuiltValueNullFieldError.checkNotNull(
                field, r'GSessionOrderByInput', 'field'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
