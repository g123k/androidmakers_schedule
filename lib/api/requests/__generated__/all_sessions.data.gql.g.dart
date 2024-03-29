// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_sessions.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAllSessionsData> _$gAllSessionsDataSerializer =
    new _$GAllSessionsDataSerializer();
Serializer<GAllSessionsData_sessions> _$gAllSessionsDataSessionsSerializer =
    new _$GAllSessionsData_sessionsSerializer();
Serializer<GAllSessionsData_sessions_nodes>
    _$gAllSessionsDataSessionsNodesSerializer =
    new _$GAllSessionsData_sessions_nodesSerializer();
Serializer<GAllSessionsData_sessions_nodes_room>
    _$gAllSessionsDataSessionsNodesRoomSerializer =
    new _$GAllSessionsData_sessions_nodes_roomSerializer();
Serializer<GAllSessionsData_sessions_nodes_speakers>
    _$gAllSessionsDataSessionsNodesSpeakersSerializer =
    new _$GAllSessionsData_sessions_nodes_speakersSerializer();

class _$GAllSessionsDataSerializer
    implements StructuredSerializer<GAllSessionsData> {
  @override
  final Iterable<Type> types = const [GAllSessionsData, _$GAllSessionsData];
  @override
  final String wireName = 'GAllSessionsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAllSessionsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sessions',
      serializers.serialize(object.sessions,
          specifiedType: const FullType(GAllSessionsData_sessions)),
    ];

    return result;
  }

  @override
  GAllSessionsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllSessionsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'sessions':
          result.sessions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAllSessionsData_sessions))!
              as GAllSessionsData_sessions);
          break;
      }
    }

    return result.build();
  }
}

class _$GAllSessionsData_sessionsSerializer
    implements StructuredSerializer<GAllSessionsData_sessions> {
  @override
  final Iterable<Type> types = const [
    GAllSessionsData_sessions,
    _$GAllSessionsData_sessions
  ];
  @override
  final String wireName = 'GAllSessionsData_sessions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllSessionsData_sessions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'nodes',
      serializers.serialize(object.nodes,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GAllSessionsData_sessions_nodes)])),
    ];

    return result;
  }

  @override
  GAllSessionsData_sessions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllSessionsData_sessionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAllSessionsData_sessions_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAllSessionsData_sessions_nodesSerializer
    implements StructuredSerializer<GAllSessionsData_sessions_nodes> {
  @override
  final Iterable<Type> types = const [
    GAllSessionsData_sessions_nodes,
    _$GAllSessionsData_sessions_nodes
  ];
  @override
  final String wireName = 'GAllSessionsData_sessions_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllSessionsData_sessions_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'startsAt',
      serializers.serialize(object.startsAt,
          specifiedType: const FullType(_i2.GLocalDateTime)),
      'speakers',
      serializers.serialize(object.speakers,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GAllSessionsData_sessions_nodes_speakers)
          ])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'endsAt',
      serializers.serialize(object.endsAt,
          specifiedType: const FullType(_i2.GLocalDateTime)),
    ];
    Object? value;
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.room;
    if (value != null) {
      result
        ..add('room')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GAllSessionsData_sessions_nodes_room)));
    }
    return result;
  }

  @override
  GAllSessionsData_sessions_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllSessionsData_sessions_nodesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'startsAt':
          result.startsAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GLocalDateTime))!
              as _i2.GLocalDateTime);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'room':
          result.room.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GAllSessionsData_sessions_nodes_room))!
              as GAllSessionsData_sessions_nodes_room);
          break;
        case 'speakers':
          result.speakers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAllSessionsData_sessions_nodes_speakers)
              ]))! as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'endsAt':
          result.endsAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GLocalDateTime))!
              as _i2.GLocalDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GAllSessionsData_sessions_nodes_roomSerializer
    implements StructuredSerializer<GAllSessionsData_sessions_nodes_room> {
  @override
  final Iterable<Type> types = const [
    GAllSessionsData_sessions_nodes_room,
    _$GAllSessionsData_sessions_nodes_room
  ];
  @override
  final String wireName = 'GAllSessionsData_sessions_nodes_room';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllSessionsData_sessions_nodes_room object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAllSessionsData_sessions_nodes_room deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllSessionsData_sessions_nodes_roomBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAllSessionsData_sessions_nodes_speakersSerializer
    implements StructuredSerializer<GAllSessionsData_sessions_nodes_speakers> {
  @override
  final Iterable<Type> types = const [
    GAllSessionsData_sessions_nodes_speakers,
    _$GAllSessionsData_sessions_nodes_speakers
  ];
  @override
  final String wireName = 'GAllSessionsData_sessions_nodes_speakers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllSessionsData_sessions_nodes_speakers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAllSessionsData_sessions_nodes_speakers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllSessionsData_sessions_nodes_speakersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAllSessionsData extends GAllSessionsData {
  @override
  final String G__typename;
  @override
  final GAllSessionsData_sessions sessions;

  factory _$GAllSessionsData(
          [void Function(GAllSessionsDataBuilder)? updates]) =>
      (new GAllSessionsDataBuilder()..update(updates))._build();

  _$GAllSessionsData._({required this.G__typename, required this.sessions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAllSessionsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        sessions, r'GAllSessionsData', 'sessions');
  }

  @override
  GAllSessionsData rebuild(void Function(GAllSessionsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllSessionsDataBuilder toBuilder() =>
      new GAllSessionsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllSessionsData &&
        G__typename == other.G__typename &&
        sessions == other.sessions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sessions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAllSessionsData')
          ..add('G__typename', G__typename)
          ..add('sessions', sessions))
        .toString();
  }
}

class GAllSessionsDataBuilder
    implements Builder<GAllSessionsData, GAllSessionsDataBuilder> {
  _$GAllSessionsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAllSessionsData_sessionsBuilder? _sessions;
  GAllSessionsData_sessionsBuilder get sessions =>
      _$this._sessions ??= new GAllSessionsData_sessionsBuilder();
  set sessions(GAllSessionsData_sessionsBuilder? sessions) =>
      _$this._sessions = sessions;

  GAllSessionsDataBuilder() {
    GAllSessionsData._initializeBuilder(this);
  }

  GAllSessionsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sessions = $v.sessions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllSessionsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllSessionsData;
  }

  @override
  void update(void Function(GAllSessionsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllSessionsData build() => _build();

  _$GAllSessionsData _build() {
    _$GAllSessionsData _$result;
    try {
      _$result = _$v ??
          new _$GAllSessionsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAllSessionsData', 'G__typename'),
              sessions: sessions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sessions';
        sessions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAllSessionsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAllSessionsData_sessions extends GAllSessionsData_sessions {
  @override
  final String G__typename;
  @override
  final BuiltList<GAllSessionsData_sessions_nodes> nodes;

  factory _$GAllSessionsData_sessions(
          [void Function(GAllSessionsData_sessionsBuilder)? updates]) =>
      (new GAllSessionsData_sessionsBuilder()..update(updates))._build();

  _$GAllSessionsData_sessions._(
      {required this.G__typename, required this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAllSessionsData_sessions', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        nodes, r'GAllSessionsData_sessions', 'nodes');
  }

  @override
  GAllSessionsData_sessions rebuild(
          void Function(GAllSessionsData_sessionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllSessionsData_sessionsBuilder toBuilder() =>
      new GAllSessionsData_sessionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllSessionsData_sessions &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAllSessionsData_sessions')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GAllSessionsData_sessionsBuilder
    implements
        Builder<GAllSessionsData_sessions, GAllSessionsData_sessionsBuilder> {
  _$GAllSessionsData_sessions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAllSessionsData_sessions_nodes>? _nodes;
  ListBuilder<GAllSessionsData_sessions_nodes> get nodes =>
      _$this._nodes ??= new ListBuilder<GAllSessionsData_sessions_nodes>();
  set nodes(ListBuilder<GAllSessionsData_sessions_nodes>? nodes) =>
      _$this._nodes = nodes;

  GAllSessionsData_sessionsBuilder() {
    GAllSessionsData_sessions._initializeBuilder(this);
  }

  GAllSessionsData_sessionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllSessionsData_sessions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllSessionsData_sessions;
  }

  @override
  void update(void Function(GAllSessionsData_sessionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllSessionsData_sessions build() => _build();

  _$GAllSessionsData_sessions _build() {
    _$GAllSessionsData_sessions _$result;
    try {
      _$result = _$v ??
          new _$GAllSessionsData_sessions._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAllSessionsData_sessions', 'G__typename'),
              nodes: nodes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        nodes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAllSessionsData_sessions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAllSessionsData_sessions_nodes
    extends GAllSessionsData_sessions_nodes {
  @override
  final String G__typename;
  @override
  final String? language;
  @override
  final String title;
  @override
  final _i2.GLocalDateTime startsAt;
  @override
  final String? description;
  @override
  final GAllSessionsData_sessions_nodes_room? room;
  @override
  final BuiltList<GAllSessionsData_sessions_nodes_speakers> speakers;
  @override
  final String id;
  @override
  final _i2.GLocalDateTime endsAt;

  factory _$GAllSessionsData_sessions_nodes(
          [void Function(GAllSessionsData_sessions_nodesBuilder)? updates]) =>
      (new GAllSessionsData_sessions_nodesBuilder()..update(updates))._build();

  _$GAllSessionsData_sessions_nodes._(
      {required this.G__typename,
      this.language,
      required this.title,
      required this.startsAt,
      this.description,
      this.room,
      required this.speakers,
      required this.id,
      required this.endsAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAllSessionsData_sessions_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GAllSessionsData_sessions_nodes', 'title');
    BuiltValueNullFieldError.checkNotNull(
        startsAt, r'GAllSessionsData_sessions_nodes', 'startsAt');
    BuiltValueNullFieldError.checkNotNull(
        speakers, r'GAllSessionsData_sessions_nodes', 'speakers');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAllSessionsData_sessions_nodes', 'id');
    BuiltValueNullFieldError.checkNotNull(
        endsAt, r'GAllSessionsData_sessions_nodes', 'endsAt');
  }

  @override
  GAllSessionsData_sessions_nodes rebuild(
          void Function(GAllSessionsData_sessions_nodesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllSessionsData_sessions_nodesBuilder toBuilder() =>
      new GAllSessionsData_sessions_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllSessionsData_sessions_nodes &&
        G__typename == other.G__typename &&
        language == other.language &&
        title == other.title &&
        startsAt == other.startsAt &&
        description == other.description &&
        room == other.room &&
        speakers == other.speakers &&
        id == other.id &&
        endsAt == other.endsAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, startsAt.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, room.hashCode);
    _$hash = $jc(_$hash, speakers.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, endsAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAllSessionsData_sessions_nodes')
          ..add('G__typename', G__typename)
          ..add('language', language)
          ..add('title', title)
          ..add('startsAt', startsAt)
          ..add('description', description)
          ..add('room', room)
          ..add('speakers', speakers)
          ..add('id', id)
          ..add('endsAt', endsAt))
        .toString();
  }
}

class GAllSessionsData_sessions_nodesBuilder
    implements
        Builder<GAllSessionsData_sessions_nodes,
            GAllSessionsData_sessions_nodesBuilder> {
  _$GAllSessionsData_sessions_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  _i2.GLocalDateTimeBuilder? _startsAt;
  _i2.GLocalDateTimeBuilder get startsAt =>
      _$this._startsAt ??= new _i2.GLocalDateTimeBuilder();
  set startsAt(_i2.GLocalDateTimeBuilder? startsAt) =>
      _$this._startsAt = startsAt;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GAllSessionsData_sessions_nodes_roomBuilder? _room;
  GAllSessionsData_sessions_nodes_roomBuilder get room =>
      _$this._room ??= new GAllSessionsData_sessions_nodes_roomBuilder();
  set room(GAllSessionsData_sessions_nodes_roomBuilder? room) =>
      _$this._room = room;

  ListBuilder<GAllSessionsData_sessions_nodes_speakers>? _speakers;
  ListBuilder<GAllSessionsData_sessions_nodes_speakers> get speakers =>
      _$this._speakers ??=
          new ListBuilder<GAllSessionsData_sessions_nodes_speakers>();
  set speakers(
          ListBuilder<GAllSessionsData_sessions_nodes_speakers>? speakers) =>
      _$this._speakers = speakers;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GLocalDateTimeBuilder? _endsAt;
  _i2.GLocalDateTimeBuilder get endsAt =>
      _$this._endsAt ??= new _i2.GLocalDateTimeBuilder();
  set endsAt(_i2.GLocalDateTimeBuilder? endsAt) => _$this._endsAt = endsAt;

  GAllSessionsData_sessions_nodesBuilder() {
    GAllSessionsData_sessions_nodes._initializeBuilder(this);
  }

  GAllSessionsData_sessions_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _language = $v.language;
      _title = $v.title;
      _startsAt = $v.startsAt.toBuilder();
      _description = $v.description;
      _room = $v.room?.toBuilder();
      _speakers = $v.speakers.toBuilder();
      _id = $v.id;
      _endsAt = $v.endsAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllSessionsData_sessions_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllSessionsData_sessions_nodes;
  }

  @override
  void update(void Function(GAllSessionsData_sessions_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllSessionsData_sessions_nodes build() => _build();

  _$GAllSessionsData_sessions_nodes _build() {
    _$GAllSessionsData_sessions_nodes _$result;
    try {
      _$result = _$v ??
          new _$GAllSessionsData_sessions_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GAllSessionsData_sessions_nodes', 'G__typename'),
              language: language,
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GAllSessionsData_sessions_nodes', 'title'),
              startsAt: startsAt.build(),
              description: description,
              room: _room?.build(),
              speakers: speakers.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GAllSessionsData_sessions_nodes', 'id'),
              endsAt: endsAt.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startsAt';
        startsAt.build();

        _$failedField = 'room';
        _room?.build();
        _$failedField = 'speakers';
        speakers.build();

        _$failedField = 'endsAt';
        endsAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAllSessionsData_sessions_nodes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAllSessionsData_sessions_nodes_room
    extends GAllSessionsData_sessions_nodes_room {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GAllSessionsData_sessions_nodes_room(
          [void Function(GAllSessionsData_sessions_nodes_roomBuilder)?
              updates]) =>
      (new GAllSessionsData_sessions_nodes_roomBuilder()..update(updates))
          ._build();

  _$GAllSessionsData_sessions_nodes_room._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAllSessionsData_sessions_nodes_room', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAllSessionsData_sessions_nodes_room', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GAllSessionsData_sessions_nodes_room', 'name');
  }

  @override
  GAllSessionsData_sessions_nodes_room rebuild(
          void Function(GAllSessionsData_sessions_nodes_roomBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllSessionsData_sessions_nodes_roomBuilder toBuilder() =>
      new GAllSessionsData_sessions_nodes_roomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllSessionsData_sessions_nodes_room &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAllSessionsData_sessions_nodes_room')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GAllSessionsData_sessions_nodes_roomBuilder
    implements
        Builder<GAllSessionsData_sessions_nodes_room,
            GAllSessionsData_sessions_nodes_roomBuilder> {
  _$GAllSessionsData_sessions_nodes_room? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GAllSessionsData_sessions_nodes_roomBuilder() {
    GAllSessionsData_sessions_nodes_room._initializeBuilder(this);
  }

  GAllSessionsData_sessions_nodes_roomBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllSessionsData_sessions_nodes_room other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllSessionsData_sessions_nodes_room;
  }

  @override
  void update(
      void Function(GAllSessionsData_sessions_nodes_roomBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllSessionsData_sessions_nodes_room build() => _build();

  _$GAllSessionsData_sessions_nodes_room _build() {
    final _$result = _$v ??
        new _$GAllSessionsData_sessions_nodes_room._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAllSessionsData_sessions_nodes_room', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GAllSessionsData_sessions_nodes_room', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GAllSessionsData_sessions_nodes_room', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GAllSessionsData_sessions_nodes_speakers
    extends GAllSessionsData_sessions_nodes_speakers {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String? photoUrl;

  factory _$GAllSessionsData_sessions_nodes_speakers(
          [void Function(GAllSessionsData_sessions_nodes_speakersBuilder)?
              updates]) =>
      (new GAllSessionsData_sessions_nodes_speakersBuilder()..update(updates))
          ._build();

  _$GAllSessionsData_sessions_nodes_speakers._(
      {required this.G__typename, required this.name, this.photoUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GAllSessionsData_sessions_nodes_speakers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GAllSessionsData_sessions_nodes_speakers', 'name');
  }

  @override
  GAllSessionsData_sessions_nodes_speakers rebuild(
          void Function(GAllSessionsData_sessions_nodes_speakersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllSessionsData_sessions_nodes_speakersBuilder toBuilder() =>
      new GAllSessionsData_sessions_nodes_speakersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllSessionsData_sessions_nodes_speakers &&
        G__typename == other.G__typename &&
        name == other.name &&
        photoUrl == other.photoUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAllSessionsData_sessions_nodes_speakers')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('photoUrl', photoUrl))
        .toString();
  }
}

class GAllSessionsData_sessions_nodes_speakersBuilder
    implements
        Builder<GAllSessionsData_sessions_nodes_speakers,
            GAllSessionsData_sessions_nodes_speakersBuilder> {
  _$GAllSessionsData_sessions_nodes_speakers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  GAllSessionsData_sessions_nodes_speakersBuilder() {
    GAllSessionsData_sessions_nodes_speakers._initializeBuilder(this);
  }

  GAllSessionsData_sessions_nodes_speakersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _photoUrl = $v.photoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllSessionsData_sessions_nodes_speakers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllSessionsData_sessions_nodes_speakers;
  }

  @override
  void update(
      void Function(GAllSessionsData_sessions_nodes_speakersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAllSessionsData_sessions_nodes_speakers build() => _build();

  _$GAllSessionsData_sessions_nodes_speakers _build() {
    final _$result = _$v ??
        new _$GAllSessionsData_sessions_nodes_speakers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAllSessionsData_sessions_nodes_speakers', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GAllSessionsData_sessions_nodes_speakers', 'name'),
            photoUrl: photoUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
