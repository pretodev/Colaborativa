import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/entities/activity.dart';
import '../../../widgets/custom_box.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    Key? key,
    required this.activity,
    required this.onClicked,
  }) : super(key: key);

  final Activity activity;
  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: CustomBox(
        width: 178.0,
        child: Column(
          children: [
            Visibility(
              visible: activity.iconUrl.contains('svg'),
              replacement: Image.network(
                activity.iconUrl,
                height: 50.0,
                width: 50.0,
              ),
              child: SvgPicture.network(
                activity.iconUrl,
                height: 50.0,
                width: 50.0,
                semanticsLabel: 'A shark?!',
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              activity.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
