import 'package:androidmakers_schedule/models/slot.dart';
import 'package:androidmakers_schedule/utils/date_utils.dart';
import 'package:ferry/typed_links.dart';

part 'conference.g.dart';

@HiveType(typeId: 200)
class Conference {
  @HiveField(0)
  final List<Slot> slots;
  @HiveField(1)
  final DateTime startDate;
  @HiveField(2)
  final DateTime endDate;
  @HiveField(3)
  final List<DateTime> days;

  Conference(
    this.startDate,
    this.endDate,
    this.slots,
    this.days,
  );

  Conference.fromSlots(
    this.slots,
    this.days,
  )   : startDate = slots.first.startDate,
        endDate = slots.last.endDate;

  @override
  String toString() {
    return 'Conference{slots: $slots, startDate: $startDate, endDate: $endDate}';
  }

  Iterable<Slot> getSlotsForDate(DateTime today) => slots.where(
        (Slot slot) => slot.startDate.isSameDay(today),
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Conference &&
          runtimeType == other.runtimeType &&
          slots == other.slots &&
          startDate == other.startDate &&
          endDate == other.endDate &&
          days == other.days;

  @override
  int get hashCode =>
      slots.hashCode ^ startDate.hashCode ^ endDate.hashCode ^ days.hashCode;
}
