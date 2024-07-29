import 'package:flutter/material.dart';
import 'package:mario_osama/core/widgets/section_header.dart';
import 'package:mario_osama/features/about/ui/widgets/skills_row.dart';

class SkillsContainer extends StatelessWidget {
  const SkillsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SectionHeader(sectionTitle: 'Skills'),
        SizedBox(height: 40),
        SkillsRow(),
      ],
    );
  }
}
