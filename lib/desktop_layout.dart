import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mario_osama/features/brief/ui/desktop_brief_section.dart';
import 'package:mario_osama/features/home/ui/desktop_home_section.dart';
import 'package:mario_osama/features/projects/ui/desktop_projects_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DesktopHomeSection(),
          SizedBox(height: 260),
          DesktopBriefSection(),
          SizedBox(height: 100),
          DesktopProjectsSection(),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
