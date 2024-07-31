import 'package:flutter/material.dart';
import 'package:mario_osama/features/projects/data/models/project_model.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_details.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_image.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem(
      {super.key,
      required this.project,
      required this.reversed,
      this.isFirst = false});

  final ProjectModel project;
  final bool reversed;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: reversed ? _buildReversedProjectItem : _buildProjectItem,
    );
  }

  List<Widget> get _buildProjectItem {
    return [
      Expanded(
        child: _buildAlignedImage(),
      ),
      const SizedBox(width: 80),
      Expanded(
        child: _buildDetails(),
      ),
    ];
  }

  List<Widget> get _buildReversedProjectItem {
    return [
      Expanded(
        child: _buildDetails(),
      ),
      const SizedBox(width: 80),
      Expanded(
        child: _buildAlignedImage(),
      ),
    ];
  }

  Padding _buildDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ProjectDetails(
        title: project.title,
        description: project.description,
        tools: project.tools,
      ),
    );
  }

  Align _buildAlignedImage() {
    return Align(
      alignment: reversed ? Alignment.center : Alignment.centerLeft,
      child: ProjectImage(
        imageUrl: project.imageUrl,
        withHoverIndicator: isFirst,
      ),
    );
  }
}
