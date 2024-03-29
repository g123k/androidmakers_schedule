import 'package:androidmakers_schedule/api/requests/__generated__/all_sessions.data.gql.dart';
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

  Session(
    this.title,
    this.description,
    this.language,
    this.startDate,
    this.endDate,
    this.speakers,
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
        endDate = DateTime.parse(node.endsAt.value);

  @override
  String toString() {
    return 'Session{title: $title}';
  }
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

@HiveType(typeId: 102)
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
}

@HiveType(typeId: 103)
class Room {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;

  Room(
    this.id,
    this.name,
  );

  @override
  String toString() {
    return 'Room{id: $id, name: $name}';
  }
}
