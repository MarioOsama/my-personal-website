import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/projects_alignment_enum.dart';
import 'package:mario_osama/features/projects/data/models/project_model.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_details.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_image.dart';

class HorizontalProjectItem extends StatelessWidget {
  const HorizontalProjectItem(
      {super.key,
      required this.project,
      required this.reversed,
      this.hoverable = false});

  final ProjectModel project;
  final bool reversed;
  final bool hoverable;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
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
      const SizedBox(width: 40),
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
      const SizedBox(width: 40),
    ];
  }

  Padding _buildDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ProjectDetails(
        title: project.title,
        description: project.description,
        tools: project.tools,
        textAlignment: ProjectTextAlignment.left,
      ),
    );
  }

  Align _buildAlignedImage() {
    return Align(
      alignment: reversed ? Alignment.centerRight : Alignment.centerLeft,
      child: ProjectImage(
        imageUrl: project.imageUrl,
        hoverable: hoverable,
      ),
    );
  }
}
