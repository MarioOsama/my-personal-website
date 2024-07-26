import 'package:flutter/material.dart';
import 'package:mario_osama/home/ui/widgets/main_brief.dart';
import 'package:mario_osama/home/ui/widgets/main_social_actions.dart';

class MainSection extends StatefulWidget {
  const MainSection({
    super.key,
  });

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MainSocialActions(),
        Expanded(
          child: MainBrief(),
        ),
        SizedBox(width: 60),
      ],
    );
  }
}
