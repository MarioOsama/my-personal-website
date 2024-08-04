import 'package:flutter/material.dart';
import 'package:mario_osama/features/home/ui/widgets/main_brief.dart';
import 'package:mario_osama/features/home/ui/widgets/main_social_actions_row.dart';
import 'package:mario_osama/features/home/ui/widgets/scroll_animation.dart';

class MobileHomeSection extends StatelessWidget {
  const MobileHomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(height: height * 0.15),
        const MainBrief(
          padding: EdgeInsets.symmetric(horizontal: 40),
        ),
        const SizedBox(height: 60),
        const MainSocialActionsWrap(),
        const SizedBox(height: 60),
        const ScrollAnimation(),
      ],
    );
  }
}
