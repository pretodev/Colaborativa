import '../../utils/date/date_utils.dart';

enum PeriodEnum {
  all,
  day,
  week;

  String get path {
    switch (this) {
      case PeriodEnum.all:
        return 'all';
      case PeriodEnum.day:
        return 'day/$todayKey';
      case PeriodEnum.week:
        return 'week/';
    }
  }
}
