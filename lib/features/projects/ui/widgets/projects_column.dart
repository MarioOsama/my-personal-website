import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
import 'package:mario_osama/core/helpers/projects_alignment_enum.dart';
import 'package:mario_osama/features/projects/ui/widgets/horizontal_project_item.dart';
import 'package:mario_osama/features/projects/ui/widgets/vertical_project_item.dart';

class ProjectsColumn extends StatelessWidget {
  const ProjectsColumn({
    super.key,
    required this.hoverable,
    required this.alignment,
  });

  final bool hoverable;
  final ProjectsAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _getProjectsList(),
    );
  }

  _getProjectsList() {
    const projectsList = AppConstant.projectsList;
    return List.generate(
      projectsList.length,
      (index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: alignment == ProjectsAlignment.vertical
            ? VerticalProjectItem(
                project: projectsList[index],
                hoverable: hoverable,
              )
            : HorizontalProjectItem(
                project: projectsList[index],
                reversed: index.isOdd,
                hoverable: hoverable,
              ),
      ),
    );
  }
}
