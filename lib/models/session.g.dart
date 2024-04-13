// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SessionAdapter extends TypeAdapter<Session> {
  @override
  final int typeId = 100;

  @override
  Session read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Session(
      fields[0] as String,
      fields[1] as String?,
      fields[2] as Language,
      fields[3] as DateTime,
      fields[4] as DateTime,
      (fields[5] as List).cast<Speaker>(),
      fields[6] as Room?,
      fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Session obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.language)
      ..writeByte(3)
      ..write(obj.startDate)
      ..writeByte(4)
      ..write(obj.endDate)
      ..writeByte(5)
      ..write(obj.speakers.toList())
      ..writeByte(6)
      ..write(obj.room)
      ..writeByte(7)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpeakerAdapter extends TypeAdapter<Speaker> {
  @override
  final int typeId = 103;

  @override
  Speaker read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Speaker(
      fields[0] as String,
      fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Speaker obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.photo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpeakerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LanguageAdapter extends TypeAdapter<Language> {
  @override
  final int typeId = 101;

  @override
  Language read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Language.english;
      case 1:
        return Language.french;
      default:
        return Language.english;
    }
  }

  @override
  void write(BinaryWriter writer, Language obj) {
    switch (obj) {
      case Language.english:
        writer.writeByte(0);
        break;
      case Language.french:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LanguageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RoomAdapter extends TypeAdapter<Room> {
  @override
  final int typeId = 104;

  @override
  Room read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Room.moebius;
      case 1:
        return Room.blin;
      case 2:
        return Room.twoZeroTwo;
      case 3:
        return Room.twoZeroFour;
      case 4:
        return Room.devLounge;
      case 5:
        return Room.officeHours;
      case 6:
        return Room.unknown;
      default:
        return Room.moebius;
    }
  }

  @override
  void write(BinaryWriter writer, Room obj) {
    switch (obj) {
      case Room.moebius:
        writer.writeByte(0);
        break;
      case Room.blin:
        writer.writeByte(1);
        break;
      case Room.twoZeroTwo:
        writer.writeByte(2);
        break;
      case Room.twoZeroFour:
        writer.writeByte(3);
        break;
      case Room.devLounge:
        writer.writeByte(4);
        break;
      case Room.officeHours:
        writer.writeByte(5);
        break;
      case Room.unknown:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
