// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FetchPolicy.serializer)
      ..add(GAllSessionsData.serializer)
      ..add(GAllSessionsData_sessions.serializer)
      ..add(GAllSessionsData_sessions_nodes.serializer)
      ..add(GAllSessionsData_sessions_nodes_room.serializer)
      ..add(GAllSessionsData_sessions_nodes_speakers.serializer)
      ..add(GAllSessionsReq.serializer)
      ..add(GAllSessionsVars.serializer)
      ..add(GConferenceField.serializer)
      ..add(GConferenceOrderByInput.serializer)
      ..add(GInstant.serializer)
      ..add(GLinkType.serializer)
      ..add(GLocalDate.serializer)
      ..add(GLocalDateTime.serializer)
      ..add(GLocalDateTimeFilterInput.serializer)
      ..add(GOrderByDirection.serializer)
      ..add(GSessionField.serializer)
      ..add(GSessionFilterInput.serializer)
      ..add(GSessionOrderByInput.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GAllSessionsData_sessions_nodes)]),
          () => new ListBuilder<GAllSessionsData_sessions_nodes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GAllSessionsData_sessions_nodes_speakers)]),
          () => new ListBuilder<GAllSessionsData_sessions_nodes_speakers>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
