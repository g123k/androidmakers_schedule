import 'package:androidmakers_schedule/models/session.dart';
import 'package:ferry/typed_links.dart';

part 'slot.g.dart';

@HiveType(typeId: 150)
class Slot {
  @HiveField(0)
  final List<Session> sessions;
  @HiveField(1)
  final DateTime startDate;
  @HiveField(2)
  final DateTime endDate;

  Slot(
    this.startDate,
    this.endDate,
    this.sessions,
  );

  @override
  String toString() {
    return 'Slot{startDate: $startDate, endDate: $endDate, sessions: $sessions}';
  }
}
