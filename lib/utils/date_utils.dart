extension DateExtensions on DateTime {
  bool isSameDay(DateTime date) {
    return date.year == year && date.month == month && date.day == day;
  }

  bool isBeforeDay(DateTime date) {
    return asDay.isBefore(date.asDay);
  }

  bool isAfterDay(DateTime date) {
    return asDay.isAfter(date.asDay);
  }

  DateTime getMaxValue() {
    return copyWith(
      hour: 23,
      minute: 59,
      second: 59,
    );
  }

  DateTime getMinValue() {
    return copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      microsecond: 0,
      millisecond: 0,
    );
  }

  DateTime get asDay => DateTime(year, month, day);
}

class DateUtils {
  const DateUtils._();

  static (DateTime now, DateTime min, DateTime max) get today {
    final DateTime now = DateTime.now();
    return (now, now.getMinValue(), now.getMaxValue());
  }
}
