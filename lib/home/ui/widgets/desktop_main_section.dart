import 'package:flutter/material.dart';
import 'package:mario_osama/home/ui/widgets/main_brief.dart';
import 'package:mario_osama/home/ui/widgets/main_social_actions_column.dart';

class DesktopMainSection extends StatelessWidget {
  const DesktopMainSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MainSocialActionsColumn(),
        Expanded(
          child: MainBrief(),
        ),
        SizedBox(width: 60),
      ],
    );
  }
}
