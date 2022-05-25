import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/entities/rank_user.dart';
import '../../../core/enums/period_enum.dart';
import '../../../core/score_service.dart';
import '../../widgets/page_body.dart';
import 'widgets/rank_filter_widget.dart';
import 'widgets/rank_list_widget.dart';

class RankView extends StatefulWidget {
  const RankView({Key? key}) : super(key: key);

  @override
  State<RankView> createState() => _RankViewState();
}

class _RankViewState extends State<RankView> {
  late final ScoreService _scoreService;

  var _rank = <RankUser>[];
  set rank(List<RankUser> value) => setState(() => _rank = value);

  void loadRank(PeriodEnum period) async {
    rank = [];
    rank = await _scoreService.fromPeriod(period);
  }

  @override
  void initState() {
    super.initState();
    _scoreService = context.read<ScoreService>();
    loadRank(PeriodEnum.all);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rank'),
        centerTitle: true,
      ),
      body: PageBody(
        child: Column(children: [
          RankFilterWidget(
            onPeriodChanged: loadRank,
          ),
          Visibility(
            visible: _rank.isNotEmpty,
            replacement: const SizedBox(),
            child: RankListWidget(users: _rank),
          )
        ]),
      ),
    );
  }
}
