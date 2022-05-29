import 'package:colaborativa_app/core/activities_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../core/entities/activity.dart';

class ActivityDetailsView extends StatefulWidget {
  const ActivityDetailsView({Key? key, required this.activity})
      : super(key: key);

  final Activity activity;

  @override
  State<ActivityDetailsView> createState() => _ActivityDetailsViewState();
}

class _ActivityDetailsViewState extends State<ActivityDetailsView> {
  late final NavigatorState navigate;
  late final ActivitiesServices activitiesServices;

  var savingValue = false;
  set saving(bool value) => setState(() => savingValue = value);

  @override
  void initState() {
    super.initState();
    navigate = Navigator.of(context);
    activitiesServices = context.read<ActivitiesServices>();
  }

  void check() async {
    saving = true;
    await activitiesServices.checkActivity(widget.activity);
    navigate.pop();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 425,
      width: double.maxFinite,
      padding: const EdgeInsets.all(22),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Visibility(
            visible: widget.activity.iconUrl.contains('svg'),
            replacement: Image.network(
              widget.activity.iconUrl,
              height: 50.0,
              width: 50.0,
            ),
            child: SvgPicture.network(
              widget.activity.iconUrl,
              height: 50.0,
              width: 50.0,
              semanticsLabel: 'A shark?!',
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            widget.activity.name,
            textAlign: TextAlign.center,
            style: theme.textTheme.headline6,
          ),
          const SizedBox(height: 16.0),
          Expanded(child: Text(widget.activity.description)),
          const SizedBox(height: 16.0),
          if (widget.activity.lastChecking != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(widget.activity.lastChecking.toString()),
            ),
          ElevatedButton(
            onPressed: savingValue ? null : check,
            child: Text(savingValue ? 'Aguarde' : 'Marcar como feito'),
          )
        ],
      ),
    );
  }
}
