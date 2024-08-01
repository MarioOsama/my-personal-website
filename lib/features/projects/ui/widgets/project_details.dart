import 'package:flutter/material.dart';
import 'package:mario_osama/core/helpers/projects_alignment_enum.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_tools.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({
    super.key,
    required this.description,
    required this.tools,
    required this.title,
    required this.textAlignment,
  });

  final String description;
  final String title;
  final List<String> tools;
  final ProjectTextAlignment textAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: _getAlignment,
      children: [
        Text(
          title,
          style: AppTextStyles.font24BlueBlackExtraBold
              .copyWith(letterSpacing: 1, wordSpacing: 2),
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: _getAlignment,
          children: textAlignment == ProjectTextAlignment.left
              ? _buildLeftedDescription
              : _buildCenteredDescription,
        ),
        const SizedBox(height: 20),
        ProjectTools(toolsList: tools, alignment: _getWrapAlignment),
      ],
    );
  }

  CrossAxisAlignment get _getAlignment {
    if (textAlignment == ProjectTextAlignment.center) {
      return CrossAxisAlignment.center;
    } else if (textAlignment == ProjectTextAlignment.left) {
      return CrossAxisAlignment.start;
    } else {
      return CrossAxisAlignment.end;
    }
  }

  WrapAlignment get _getWrapAlignment {
    if (textAlignment == ProjectTextAlignment.center) {
      return WrapAlignment.center;
    } else if (textAlignment == ProjectTextAlignment.left) {
      return WrapAlignment.start;
    } else {
      return WrapAlignment.end;
    }
  }

  List<Widget> get _buildLeftedDescription {
    return description
        .split('\n')
        .map((line) => Text(
              line,
              style: AppTextStyles.font14GreyBold,
            ))
        .toList();
  }

  List<Widget> get _buildCenteredDescription {
    return description
        .split('\n- ')
        .map((line) => Text(
              line,
              textAlign: TextAlign.center,
              style: AppTextStyles.font14GreyBold,
            ))
        .toList();
  }
}
