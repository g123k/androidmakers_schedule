// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:androidmakers_schedule/api/model/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'all_sessions.var.gql.g.dart';

abstract class GAllSessionsVars
    implements Built<GAllSessionsVars, GAllSessionsVarsBuilder> {
  GAllSessionsVars._();

  factory GAllSessionsVars([void Function(GAllSessionsVarsBuilder b) updates]) =
      _$GAllSessionsVars;

  static Serializer<GAllSessionsVars> get serializer =>
      _$gAllSessionsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAllSessionsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAllSessionsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAllSessionsVars.serializer,
        json,
      );
}
