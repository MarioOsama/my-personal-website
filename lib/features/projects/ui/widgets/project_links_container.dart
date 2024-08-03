import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/features/projects/ui/widgets/link_button.dart';

class ProjectLinksContainer extends StatelessWidget {
  const ProjectLinksContainer({super.key, required this.links});

  final Map<String, String> links;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      color: AppColors.blueBlackColor.withOpacity(0.75),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _getLinkButtonItemsList,
      ),
    );
  }

  List<Widget> get _getLinkButtonItemsList {
    if (links.isEmpty) {
      return const [];
    } else {
      return links.entries.map((entry) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: LinkButton(
            imagePath: 'assets/images/png/github.png',
            title: 'View on ${entry.key}',
            link: entry.value,
          ),
        );
      }).toList();
    }
  }
}
