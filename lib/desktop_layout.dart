import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mario_osama/features/brief/ui/desktop_brief_section.dart';
import 'package:mario_osama/features/home/ui/desktop_home_section.dart';
import 'package:mario_osama/features/projects/ui/desktop_projects_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return SingleChildScrollView(
      child: Column(
        children: [
          const DesktopHomeSection(),
          SizedBox(height: height * 0.2),
          const DesktopBriefSection(),
          SizedBox(height: height * 0.1),
          const DesktopProjectsSection(),
          SizedBox(height: height * 0.1),
        ],
      ),
    );
  }
}
