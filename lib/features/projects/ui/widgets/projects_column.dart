import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/app_constant.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_item.dart';

class ProjectsColumn extends StatelessWidget {
  const ProjectsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _getProjectsItemsList(),
    );
  }

  _getProjectsItemsList() {
    final projectsList = AppConstant.projectsList;
    return List.generate(projectsList.length, (index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: index == 0
            ? ProjectItem(
                project: projectsList[index],
                reversed: index.isOdd,
                isFirst: true,
              )
            : ProjectItem(
                project: projectsList[index],
                reversed: index.isOdd,
              ),
      );
    });
  }
}
