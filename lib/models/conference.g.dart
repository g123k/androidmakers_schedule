// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conference.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConferenceAdapter extends TypeAdapter<Conference> {
  @override
  final int typeId = 200;

  @override
  Conference read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Conference(
      fields[1] as DateTime,
      fields[2] as DateTime,
      (fields[0] as List).cast<Slot>(),
      (fields[3] as List).cast<DateTime>(),
    );
  }

  @override
  void write(BinaryWriter writer, Conference obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.slots)
      ..writeByte(1)
      ..write(obj.startDate)
      ..writeByte(2)
      ..write(obj.endDate)
      ..writeByte(3)
      ..write(obj.days);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConferenceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
