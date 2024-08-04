import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/projects_alignment_enum.dart';
import 'package:mario_osama/core/widgets/section_header.dart';
import 'package:mario_osama/features/projects/ui/widgets/projects_column.dart';

class MobileProjectsSection extends StatelessWidget {
  const MobileProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SectionHeader(sectionTitle: 'My Latest Projects'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: _buildProjects(screenWidth),
        ),
      ],
    );
  }

  Widget _buildProjects(double screenWidth) {
    return const ProjectsColumn(
      hoverable: false,
      alignment: ProjectsAlignment.vertical,
    );
  }
}
