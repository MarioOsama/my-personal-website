import 'package:flutter/material.dart';
import 'package:mario_osama/features/projects/ui/widgets/link_button.dart';

class ProjectsLinksRow extends StatelessWidget {
  const ProjectsLinksRow({super.key, required this.links});

  final Map<String, String> links;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _getLinkButtonItemsList,
    );
  }

  List<Widget> get _getLinkButtonItemsList {
    if (links.isEmpty) {
      return const [];
    } else {
      return links.entries.map((entry) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: LinkButton.icon(
            imagePath: 'assets/images/png/github.png',
            link: entry.value,
          ),
        );
      }).toList();
    }
  }
}
