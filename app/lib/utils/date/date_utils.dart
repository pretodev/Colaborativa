class DateUtils {
  static String get todayKey {
    final today = DateTime.now();
    return '${today.year}_${today.month}_${today.day}';
  }
}
