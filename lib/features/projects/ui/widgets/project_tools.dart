import 'package:flutter/material.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_tool_item.dart';

class ProjectTools extends StatelessWidget {
  const ProjectTools({
    super.key,
    required this.toolsList,
    required this.alignment,
  });

  final List<String> toolsList;
  final WrapAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: alignment,
      spacing: 10,
      runSpacing: 10,
      children: _getToolsListItems,
    );
  }

  List<Widget> get _getToolsListItems {
    return toolsList.map((tool) => ProjectToolItem(toolName: tool)).toList();
  }
}
