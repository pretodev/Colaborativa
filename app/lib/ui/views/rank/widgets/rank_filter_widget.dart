import 'package:flutter/material.dart';

import '../../../../core/enums/period_enum.dart';
import 'rank_filter_item_widget.dart';

class RankFilterWidget extends StatefulWidget {
  const RankFilterWidget({
    Key? key,
    required this.onPeriodChanged,
  }) : super(key: key);

  final ValueChanged<PeriodEnum> onPeriodChanged;

  @override
  State<RankFilterWidget> createState() => _RankFilterWidgetState();
}

class _RankFilterWidgetState extends State<RankFilterWidget> {
  var _period = PeriodEnum.day;

  void _setPeriod(PeriodEnum value) {
    setState(() {
      _period = value;
    });
    widget.onPeriodChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RankFilterItemWidget(
          label: 'Dia',
          selected: _period == PeriodEnum.day,
          onPressed: () => _setPeriod(PeriodEnum.day),
        ),
        const SizedBox(width: 4),
        RankFilterItemWidget(
          label: 'Semana',
          selected: _period == PeriodEnum.week,
          onPressed: () => _setPeriod(PeriodEnum.week),
        ),
        const SizedBox(width: 4),
        RankFilterItemWidget(
          label: 'Mês',
          selected: _period == PeriodEnum.month,
          onPressed: () => _setPeriod(PeriodEnum.month),
        ),
      ],
    );
  }
}
