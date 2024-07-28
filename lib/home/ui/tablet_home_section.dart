import 'package:flutter/material.dart';
import 'package:mario_osama/home/ui/widgets/home_section_header.dart';
import 'package:mario_osama/home/ui/widgets/main_brief.dart';
import 'package:mario_osama/home/ui/widgets/main_social_actions_row.dart';
import 'package:mario_osama/home/ui/widgets/scroll_animation.dart';

class TabletHomeSection extends StatelessWidget {
  const TabletHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: HomeSectionHeader(),
        ),
        SizedBox(height: 120),
        MainBrief(),
        SizedBox(height: 60),
        MainSocialActionsRow(),
        SizedBox(height: 60),
        ScrollAnimation(),
      ],
    );
  }
}
