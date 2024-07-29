import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_item.dart';

class ProjectsRow extends StatelessWidget {
  const ProjectsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _getProjectsItemsList(),
    );
  }

  _getProjectsItemsList() {
    final projectsList = AppConstant.projectsImagesMap.values.toList();
    return projectsList
        .map((project) => ProjectItem(
              imageUrl: project['image_url']!,
              description: project['description']!,
            ))
        .toList();
  }
}
