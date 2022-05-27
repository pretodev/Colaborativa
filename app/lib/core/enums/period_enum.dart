import '../../utils/date/date_utils.dart';

enum PeriodEnum {
  all,
  day,
  week,
  month;

  String get path {
    switch (this) {
      case PeriodEnum.all:
        return 'all';
      case PeriodEnum.day:
        return 'day/$todayKey';
      case PeriodEnum.week:
        return 'week/$weekKey';
      case PeriodEnum.month:
        return 'month/$monthKey';
    }
  }
}
