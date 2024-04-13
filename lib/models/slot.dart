import 'package:androidmakers_schedule/models/session.dart';
import 'package:androidmakers_schedule/utils/date_utils.dart';
import 'package:ferry/typed_links.dart';

part 'slot.g.dart';

@HiveType(typeId: 150)
class Slot {
  @HiveField(0)
  final Iterable<Session> sessions;
  @HiveField(1)
  final DateTime startDate;
  @HiveField(2)
  final DateTime endDate;

  Slot(
    this.startDate,
    this.endDate,
    this.sessions,
  );

  Slot copyWith({
    DateTime? startDate,
    DateTime? endDate,
    Iterable<Session>? sessions,
  }) {
    return Slot(
      startDate ?? this.startDate,
      endDate ?? this.endDate,
      sessions ?? this.sessions,
    );
  }

  @override
  String toString() {
    return 'Slot{startDate: $startDate, endDate: $endDate, sessions: $sessions}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Slot &&
          runtimeType == other.runtimeType &&
          sessions == other.sessions &&
          startDate == other.startDate &&
          endDate == other.endDate;

  @override
  int get hashCode => sessions.hashCode ^ startDate.hashCode ^ endDate.hashCode;
}

extension SlotsExtension on Iterable<Slot> {
  Iterable<Slot> getSlotsForDate(DateTime date) => where(
        (Slot slot) => slot.startDate.isSameDay(date),
      );
}
