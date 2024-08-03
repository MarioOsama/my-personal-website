import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/projects_alignment_enum.dart';
import 'package:mario_osama/core/utils/size_config.dart';
import 'package:mario_osama/features/projects/data/models/project_model.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_details.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_image.dart';

class VerticalProjectItem extends StatelessWidget {
  const VerticalProjectItem(
      {super.key, required this.project, this.hoverable = false});

  final ProjectModel project;
  final bool hoverable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildProjectItem(context),
    );
  }

  List<Widget> _buildProjectItem(BuildContext context) {
    return [
      _buildAlignedImage(context),
      const SizedBox(height: 40),
      _buildDetails(),
      const SizedBox(height: 20),
    ];
  }

  SizedBox _buildDetails() {
    return SizedBox(
      width: 600,
      child: ProjectDetails(
        title: project.title,
        description: project.description,
        tools: project.tools,
        textAlignment: ProjectTextAlignment.center,
      ),
    );
  }

  ProjectImage _buildAlignedImage(BuildContext context) {
    return ProjectImage(
      imageUrl: project.imageUrl,
      links: project.links,
      hoverable: hoverable,
      width: 700,
      height: _getImageHeight(context),
    );
  }

  double _getImageHeight(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return width < SizeConfig.tablet
        ? MediaQuery.sizeOf(context).width * 0.5
        : MediaQuery.sizeOf(context).width * 0.45;
  }
}
