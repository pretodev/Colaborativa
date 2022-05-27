import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

String get todayKey {
  final today = DateTime.now();
  return DateFormat('yyy-MM-dd').format(today);
}

String get weekKey {
  final weekDay = Jiffy().week;
  final year = Jiffy().year;
  return '$year-$weekDay';
}

String get monthKey {
  final today = DateTime.now();
  return DateFormat('yyy-MM').format(today);
}
