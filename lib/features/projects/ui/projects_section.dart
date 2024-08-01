import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/projects_alignment_enum.dart';
import 'package:mario_osama/core/utils/size_config.dart';
import 'package:mario_osama/core/widgets/section_header.dart';
import 'package:mario_osama/features/projects/ui/widgets/projects_column.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SectionHeader(sectionTitle: 'My Latest Projects'),
        const SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: _buildProjects(screenWidth),
        ),
      ],
    );
  }

  Widget _buildProjects(double screenWidth) {
    if (screenWidth > SizeConfig.tabletProjectsSectionBreakpoint) {
      return const ProjectsColumn(
        hoverable: false,
        alignment: ProjectsAlignment.horizontal,
      );
    }
    return const ProjectsColumn(
      hoverable: false,
      alignment: ProjectsAlignment.vertical,
    );
  }
}
