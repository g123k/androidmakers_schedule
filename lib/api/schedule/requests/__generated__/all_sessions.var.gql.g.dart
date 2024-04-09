// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_sessions.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAllSessionsVars> _$gAllSessionsVarsSerializer =
    new _$GAllSessionsVarsSerializer();

class _$GAllSessionsVarsSerializer
    implements StructuredSerializer<GAllSessionsVars> {
  @override
  final Iterable<Type> types = const [GAllSessionsVars, _$GAllSessionsVars];
  @override
  final String wireName = 'GAllSessionsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAllSessionsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAllSessionsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAllSessionsVarsBuilder().build();
  }
}

class _$GAllSessionsVars extends GAllSessionsVars {
  factory _$GAllSessionsVars(
          [void Function(GAllSessionsVarsBuilder)? updates]) =>
      (new GAllSessionsVarsBuilder()..update(updates))._build();

  _$GAllSessionsVars._() : super._();

  @override
  GAllSessionsVars rebuild(void Function(GAllSessionsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllSessionsVarsBuilder toBuilder() =>
      new GAllSessionsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllSessionsVars;
  }

  @override
  int get hashCode {
    return 537386932;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GAllSessionsVars').toString();
  }
}

class GAllSessionsVarsBuilder
    implements Builder<GAllSessionsVars, GAllSessionsVarsBuilder> {
  _$GAllSessionsVars? _$v;

  GAllSessionsVarsBuilder();

  @override
  void replace(GAllSessionsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllSessionsVars;
  }

  @override
  void update(void Function(GAllSessionsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllSessionsVars build() => _build();

  _$GAllSessionsVars _build() {
    final _$result = _$v ?? new _$GAllSessionsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
