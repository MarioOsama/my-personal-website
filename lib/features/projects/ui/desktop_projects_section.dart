import 'package:flutter/material.dart';
import 'package:mario_osama/core/widgets/section_header.dart';
import 'package:mario_osama/features/projects/ui/widgets/projects_row.dart';

class DesktopProjectsSection extends StatelessWidget {
  const DesktopProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(sectionTitle: 'My Latest Projects'),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: ProjectsRow(),
        ),
      ],
    );
  }
}
