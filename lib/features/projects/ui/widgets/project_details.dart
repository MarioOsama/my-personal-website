import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_tools.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({
    super.key,
    required this.description,
    required this.tools,
    required this.title,
  });

  final String description;
  final String title;
  final List<String> tools;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.font24BlueBlackExtraBold
              .copyWith(letterSpacing: 1, wordSpacing: 2),
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildDescription,
        ),
        const SizedBox(height: 20),
        ProjectTools(toolsList: tools),
      ],
    );
  }

  List<Widget> get _buildDescription {
    return description.split('\n').map((e) => Text(e)).toList();
  }
}
