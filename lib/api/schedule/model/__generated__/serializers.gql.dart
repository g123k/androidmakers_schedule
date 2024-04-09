// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:androidmakers_schedule/api/schedule/model/__generated__/schema.schema.gql.dart'
    show
        GConferenceField,
        GConferenceOrderByInput,
        GInstant,
        GLinkType,
        GLocalDate,
        GLocalDateTime,
        GLocalDateTimeFilterInput,
        GOrderByDirection,
        GSessionField,
        GSessionFilterInput,
        GSessionOrderByInput;
import 'package:androidmakers_schedule/api/schedule/requests/__generated__/all_sessions.data.gql.dart'
    show
        GAllSessionsData,
        GAllSessionsData_sessions,
        GAllSessionsData_sessions_nodes,
        GAllSessionsData_sessions_nodes_room,
        GAllSessionsData_sessions_nodes_speakers;
import 'package:androidmakers_schedule/api/schedule/requests/__generated__/all_sessions.req.gql.dart'
    show GAllSessionsReq;
import 'package:androidmakers_schedule/api/schedule/requests/__generated__/all_sessions.var.gql.dart'
    show GAllSessionsVars;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAllSessionsData,
  GAllSessionsData_sessions,
  GAllSessionsData_sessions_nodes,
  GAllSessionsData_sessions_nodes_room,
  GAllSessionsData_sessions_nodes_speakers,
  GAllSessionsReq,
  GAllSessionsVars,
  GConferenceField,
  GConferenceOrderByInput,
  GInstant,
  GLinkType,
  GLocalDate,
  GLocalDateTime,
  GLocalDateTimeFilterInput,
  GOrderByDirection,
  GSessionField,
  GSessionFilterInput,
  GSessionOrderByInput,
])
final Serializers serializers = _serializersBuilder.build();
