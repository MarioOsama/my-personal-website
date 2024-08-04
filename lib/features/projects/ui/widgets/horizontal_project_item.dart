import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/projects_alignment_enum.dart';
import 'package:mario_osama/core/utils/size_config.dart';
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
      children: reversed
          ? _buildReversedProjectItem(context)
          : _buildProjectItem(context),
    );
  }

  List<Widget> _buildProjectItem(BuildContext context) {
    return [
      Expanded(
        child: _buildAlignedImage(context),
      ),
      const SizedBox(width: 80),
      Expanded(
        child: _buildDetails(),
      ),
      const SizedBox(width: 40),
    ];
  }

  List<Widget> _buildReversedProjectItem(BuildContext context) {
    return [
      Expanded(
        child: _buildDetails(),
      ),
      const SizedBox(width: 80),
      Expanded(
        child: _buildAlignedImage(context),
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

  Align _buildAlignedImage(BuildContext context) {
    return Align(
      alignment: reversed ? Alignment.centerRight : Alignment.centerLeft,
      child: ProjectImage(
        imageUrl: project.imageUrl,
        links: project.links,
        hoverable: hoverable,
        height: _getImageHeight(context),
      ),
    );
  }

  _getImageHeight(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    if (width > 1800) {
      return 500;
    }
    if (width < SizeConfig.desktop) {
      return MediaQuery.sizeOf(context).width * 0.3;
    }
    return MediaQuery.sizeOf(context).width * 0.25;
  }
}
