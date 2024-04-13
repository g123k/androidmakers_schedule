import 'package:androidmakers_schedule/api/schedule/requests/__generated__/all_sessions.data.gql.dart';
import 'package:ferry/typed_links.dart';

part 'session.g.dart';

@HiveType(typeId: 100)
class Session {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String? description;
  @HiveField(2)
  final Language language;
  @HiveField(3)
  final DateTime startDate;
  @HiveField(4)
  final DateTime endDate;
  @HiveField(5)
  final Iterable<Speaker> speakers;
  @HiveField(6)
  final Room? room;
  @HiveField(7)
  final String type;

  Session(
    this.title,
    this.description,
    this.language,
    this.startDate,
    this.endDate,
    this.speakers,
    this.room,
    this.type,
  );

  Session.fromAPI(GAllSessionsData_sessions_nodes node)
      : title = node.title,
        description = node.description,
        language = Language.from(node.language),
        speakers = node.speakers.map(
          (GAllSessionsData_sessions_nodes_speakers speaker) =>
              Speaker.fromAPI(speaker),
        ),
        startDate = DateTime.parse(node.startsAt.value),
        endDate = DateTime.parse(node.endsAt.value),
        room = Room.fromString(node.room?.name),
        type = node.type;

  @override
  String toString() {
    return 'Session{title: $title}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Session &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          description == other.description &&
          language == other.language &&
          startDate == other.startDate &&
          endDate == other.endDate &&
          speakers == other.speakers &&
          room == other.room &&
          type == other.type;

  @override
  int get hashCode =>
      title.hashCode ^
      description.hashCode ^
      language.hashCode ^
      startDate.hashCode ^
      endDate.hashCode ^
      speakers.hashCode ^
      room.hashCode ^
      type.hashCode;
}

@HiveType(typeId: 101)
enum Language {
  @HiveField(0)
  english,
  @HiveField(1)
  french;

  static Language from(String? lng) {
    if (lng == null || lng.isEmpty) {
      return Language.english;
    } else if (lng.toLowerCase().startsWith('fr')) {
      return Language.french;
    } else {
      return Language.english;
    }
  }
}

@HiveType(typeId: 103)
class Speaker {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String? photo;

  Speaker(
    this.name,
    this.photo,
  );

  Speaker.fromAPI(GAllSessionsData_sessions_nodes_speakers speaker)
      : name = speaker.name,
        photo = speaker.photoUrl;

  @override
  String toString() {
    return 'Speaker{name: $name, photo: $photo}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Speaker &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          photo == other.photo;

  @override
  int get hashCode => name.hashCode ^ photo.hashCode;
}

@HiveType(typeId: 104)
enum Room {
  @HiveField(0)
  moebius('Moebius'),
  @HiveField(1)
  blin('Blin'),
  @HiveField(2)
  twoZeroTwo('2.02'),
  @HiveField(3)
  twoZeroFour('2.04'),
  @HiveField(4)
  devLounge('Dev Lounge'),
  @HiveField(5)
  officeHours('Office Hour'),
  @HiveField(6)
  unknown('-');

  final String name;

  const Room(this.name);

  static Room fromString(String? name) {
    if (name == null) {
      return Room.unknown;
    }

    final String realName = name.replaceFirst('Salle', '').trim().toLowerCase();
    // Special case
    if (realName.contains('office hour')) {
      return Room.officeHours;
    }

    return Room.values.firstWhere(
      (Room element) => element.name.toLowerCase() == realName,
      orElse: () => Room.unknown,
    );
  }
}
