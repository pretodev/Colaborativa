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
  var _period = PeriodEnum.all;

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
          label: 'Todos',
          selected: _period == PeriodEnum.all,
          onPressed: () => _setPeriod(PeriodEnum.all),
        ),
        const SizedBox(width: 4),
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
      ],
    );
  }
}
