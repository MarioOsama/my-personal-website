import 'package:flutter/material.dart';
import 'package:mario_osama/features/home/ui/widgets/main_brief.dart';
import 'package:mario_osama/features/home/ui/widgets/main_social_actions_row.dart';
import 'package:mario_osama/features/home/ui/widgets/scroll_animation.dart';

class TabletHomeSection extends StatelessWidget {
  const TabletHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return Column(
      children: [
        SizedBox(height: height * 0.25),
        const MainBrief(),
        const SizedBox(height: 80),
        const MainSocialActionsWrap(),
        const SizedBox(height: 60),
        const ScrollAnimation(),
      ],
    );
  }
}
