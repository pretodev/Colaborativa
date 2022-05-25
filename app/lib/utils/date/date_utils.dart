import 'package:intl/intl.dart';

String get todayKey {
  final today = DateTime.now();
  return DateFormat('yyy-MM-dd').format(today);
}
