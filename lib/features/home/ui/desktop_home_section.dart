import 'package:flutter/material.dart';
import 'package:mario_osama/features/home/ui/widgets/home_section_header.dart';
import 'package:mario_osama/features/home/ui/widgets/main_brief.dart';
import 'package:mario_osama/features/home/ui/widgets/main_social_actions_column.dart';
import 'package:mario_osama/features/home/ui/widgets/scroll_animation.dart';

class DesktopHomeSection extends StatelessWidget {
  const DesktopHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: HomeSectionHeader(),
        ),
        SizedBox(height: height * 0.05),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Row(
            children: [
              MainSocialActionsColumn(),
              Expanded(
                child: MainBrief(),
              ),
              SizedBox(width: 60),
            ],
          ),
        ),
        const ScrollAnimation(),
      ],
    );
  }
}
