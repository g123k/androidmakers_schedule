// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:androidmakers_schedule/api/model/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:androidmakers_schedule/api/model/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'all_sessions.data.gql.g.dart';

abstract class GAllSessionsData
    implements Built<GAllSessionsData, GAllSessionsDataBuilder> {
  GAllSessionsData._();

  factory GAllSessionsData([void Function(GAllSessionsDataBuilder b) updates]) =
      _$GAllSessionsData;

  static void _initializeBuilder(GAllSessionsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAllSessionsData_sessions get sessions;
  static Serializer<GAllSessionsData> get serializer =>
      _$gAllSessionsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllSessionsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllSessionsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllSessionsData.serializer,
        json,
      );
}

abstract class GAllSessionsData_sessions
    implements
        Built<GAllSessionsData_sessions, GAllSessionsData_sessionsBuilder> {
  GAllSessionsData_sessions._();

  factory GAllSessionsData_sessions(
          [void Function(GAllSessionsData_sessionsBuilder b) updates]) =
      _$GAllSessionsData_sessions;

  static void _initializeBuilder(GAllSessionsData_sessionsBuilder b) =>
      b..G__typename = 'SessionConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAllSessionsData_sessions_nodes> get nodes;
  static Serializer<GAllSessionsData_sessions> get serializer =>
      _$gAllSessionsDataSessionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllSessionsData_sessions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllSessionsData_sessions? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllSessionsData_sessions.serializer,
        json,
      );
}

abstract class GAllSessionsData_sessions_nodes
    implements
        Built<GAllSessionsData_sessions_nodes,
            GAllSessionsData_sessions_nodesBuilder> {
  GAllSessionsData_sessions_nodes._();

  factory GAllSessionsData_sessions_nodes(
          [void Function(GAllSessionsData_sessions_nodesBuilder b) updates]) =
      _$GAllSessionsData_sessions_nodes;

  static void _initializeBuilder(GAllSessionsData_sessions_nodesBuilder b) =>
      b..G__typename = 'Session';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get language;
  String get title;
  _i2.GLocalDateTime get startsAt;
  String? get description;
  GAllSessionsData_sessions_nodes_room? get room;
  BuiltList<GAllSessionsData_sessions_nodes_speakers> get speakers;
  String get id;
  _i2.GLocalDateTime get endsAt;
  static Serializer<GAllSessionsData_sessions_nodes> get serializer =>
      _$gAllSessionsDataSessionsNodesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllSessionsData_sessions_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllSessionsData_sessions_nodes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllSessionsData_sessions_nodes.serializer,
        json,
      );
}

abstract class GAllSessionsData_sessions_nodes_room
    implements
        Built<GAllSessionsData_sessions_nodes_room,
            GAllSessionsData_sessions_nodes_roomBuilder> {
  GAllSessionsData_sessions_nodes_room._();

  factory GAllSessionsData_sessions_nodes_room(
      [void Function(GAllSessionsData_sessions_nodes_roomBuilder b)
          updates]) = _$GAllSessionsData_sessions_nodes_room;

  static void _initializeBuilder(
          GAllSessionsData_sessions_nodes_roomBuilder b) =>
      b..G__typename = 'Room';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GAllSessionsData_sessions_nodes_room> get serializer =>
      _$gAllSessionsDataSessionsNodesRoomSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllSessionsData_sessions_nodes_room.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllSessionsData_sessions_nodes_room? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllSessionsData_sessions_nodes_room.serializer,
        json,
      );
}

abstract class GAllSessionsData_sessions_nodes_speakers
    implements
        Built<GAllSessionsData_sessions_nodes_speakers,
            GAllSessionsData_sessions_nodes_speakersBuilder> {
  GAllSessionsData_sessions_nodes_speakers._();

  factory GAllSessionsData_sessions_nodes_speakers(
      [void Function(GAllSessionsData_sessions_nodes_speakersBuilder b)
          updates]) = _$GAllSessionsData_sessions_nodes_speakers;

  static void _initializeBuilder(
          GAllSessionsData_sessions_nodes_speakersBuilder b) =>
      b..G__typename = 'Speaker';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String? get photoUrl;
  static Serializer<GAllSessionsData_sessions_nodes_speakers> get serializer =>
      _$gAllSessionsDataSessionsNodesSpeakersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllSessionsData_sessions_nodes_speakers.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllSessionsData_sessions_nodes_speakers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllSessionsData_sessions_nodes_speakers.serializer,
        json,
      );
}
