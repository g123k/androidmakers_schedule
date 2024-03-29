extension DateExtensions on DateTime {
  bool isSameDay(DateTime date) {
    return date.year == year && date.month == month && date.day == day;
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
    );
  }

  DateTime get asDay => DateTime(year, month, day);
}
