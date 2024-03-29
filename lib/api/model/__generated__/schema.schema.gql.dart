// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:androidmakers_schedule/api/model/__generated__/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

class GConferenceField extends EnumClass {
  const GConferenceField._(String name) : super(name);

  static const GConferenceField DAYS = _$gConferenceFieldDAYS;

  static Serializer<GConferenceField> get serializer =>
      _$gConferenceFieldSerializer;

  static BuiltSet<GConferenceField> get values => _$gConferenceFieldValues;

  static GConferenceField valueOf(String name) =>
      _$gConferenceFieldValueOf(name);
}

abstract class GConferenceOrderByInput
    implements Built<GConferenceOrderByInput, GConferenceOrderByInputBuilder> {
  GConferenceOrderByInput._();

  factory GConferenceOrderByInput(
          [void Function(GConferenceOrderByInputBuilder b) updates]) =
      _$GConferenceOrderByInput;

  GOrderByDirection get direction;
  GConferenceField get field;
  static Serializer<GConferenceOrderByInput> get serializer =>
      _$gConferenceOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GConferenceOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GConferenceOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GConferenceOrderByInput.serializer,
        json,
      );
}

abstract class GInstant implements Built<GInstant, GInstantBuilder> {
  GInstant._();

  factory GInstant([String? value]) =>
      _$GInstant((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GInstant> get serializer =>
      _i2.DefaultScalarSerializer<GInstant>(
          (Object serialized) => GInstant((serialized as String?)));
}

class GLinkType extends EnumClass {
  const GLinkType._(String name) : super(name);

  static const GLinkType YouTube = _$gLinkTypeYouTube;

  static const GLinkType Audio = _$gLinkTypeAudio;

  static const GLinkType AudioUncompressed = _$gLinkTypeAudioUncompressed;

  static const GLinkType Other = _$gLinkTypeOther;

  static Serializer<GLinkType> get serializer => _$gLinkTypeSerializer;

  static BuiltSet<GLinkType> get values => _$gLinkTypeValues;

  static GLinkType valueOf(String name) => _$gLinkTypeValueOf(name);
}

abstract class GLocalDate implements Built<GLocalDate, GLocalDateBuilder> {
  GLocalDate._();

  factory GLocalDate([String? value]) =>
      _$GLocalDate((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GLocalDate> get serializer =>
      _i2.DefaultScalarSerializer<GLocalDate>(
          (Object serialized) => GLocalDate((serialized as String?)));
}

abstract class GLocalDateTime
    implements Built<GLocalDateTime, GLocalDateTimeBuilder> {
  GLocalDateTime._();

  factory GLocalDateTime([String? value]) =>
      _$GLocalDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GLocalDateTime> get serializer =>
      _i2.DefaultScalarSerializer<GLocalDateTime>(
          (Object serialized) => GLocalDateTime((serialized as String?)));
}

abstract class GLocalDateTimeFilterInput
    implements
        Built<GLocalDateTimeFilterInput, GLocalDateTimeFilterInputBuilder> {
  GLocalDateTimeFilterInput._();

  factory GLocalDateTimeFilterInput(
          [void Function(GLocalDateTimeFilterInputBuilder b) updates]) =
      _$GLocalDateTimeFilterInput;

  GLocalDateTime? get after;
  GLocalDateTime? get before;
  static Serializer<GLocalDateTimeFilterInput> get serializer =>
      _$gLocalDateTimeFilterInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLocalDateTimeFilterInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLocalDateTimeFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLocalDateTimeFilterInput.serializer,
        json,
      );
}

class GOrderByDirection extends EnumClass {
  const GOrderByDirection._(String name) : super(name);

  static const GOrderByDirection ASCENDING = _$gOrderByDirectionASCENDING;

  static const GOrderByDirection DESCENDING = _$gOrderByDirectionDESCENDING;

  static Serializer<GOrderByDirection> get serializer =>
      _$gOrderByDirectionSerializer;

  static BuiltSet<GOrderByDirection> get values => _$gOrderByDirectionValues;

  static GOrderByDirection valueOf(String name) =>
      _$gOrderByDirectionValueOf(name);
}

class GSessionField extends EnumClass {
  const GSessionField._(String name) : super(name);

  static const GSessionField STARTS_AT = _$gSessionFieldSTARTS_AT;

  static Serializer<GSessionField> get serializer => _$gSessionFieldSerializer;

  static BuiltSet<GSessionField> get values => _$gSessionFieldValues;

  static GSessionField valueOf(String name) => _$gSessionFieldValueOf(name);
}

abstract class GSessionFilterInput
    implements Built<GSessionFilterInput, GSessionFilterInputBuilder> {
  GSessionFilterInput._();

  factory GSessionFilterInput(
          [void Function(GSessionFilterInputBuilder b) updates]) =
      _$GSessionFilterInput;

  GLocalDateTimeFilterInput? get endsAt;
  GLocalDateTimeFilterInput? get startsAt;
  static Serializer<GSessionFilterInput> get serializer =>
      _$gSessionFilterInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSessionFilterInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSessionFilterInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSessionFilterInput.serializer,
        json,
      );
}

abstract class GSessionOrderByInput
    implements Built<GSessionOrderByInput, GSessionOrderByInputBuilder> {
  GSessionOrderByInput._();

  factory GSessionOrderByInput(
          [void Function(GSessionOrderByInputBuilder b) updates]) =
      _$GSessionOrderByInput;

  GOrderByDirection get direction;
  GSessionField get field;
  static Serializer<GSessionOrderByInput> get serializer =>
      _$gSessionOrderByInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSessionOrderByInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSessionOrderByInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSessionOrderByInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
