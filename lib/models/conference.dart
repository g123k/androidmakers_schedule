import 'package:androidmakers_schedule/models/slot.dart';
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
}
