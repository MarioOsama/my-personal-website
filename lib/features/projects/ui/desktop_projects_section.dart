import 'package:flutter/material.dart';
import 'package:mario_osama/core/widgets/section_header.dart';
import 'package:mario_osama/features/projects/ui/widgets/projects_column.dart';

class DesktopProjectsSection extends StatelessWidget {
  const DesktopProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SectionHeader(sectionTitle: 'My Latest Projects'),
        SizedBox(height: 60),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: ProjectsColumn(),
        ),
      ],
    );
  }
}
