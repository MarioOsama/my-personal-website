import 'package:flutter/material.dart';
import 'package:mario_osama/features/about/ui/desktop_brief_section.dart';
import 'package:mario_osama/features/home/ui/desktop_home_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          DesktopHomeSection(),
          SizedBox(height: 260),
          DesktopBriefSection(),
        ],
      ),
    );
  }
}
