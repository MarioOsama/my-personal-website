import 'package:flutter/material.dart';
import 'package:mario_osama/features/brief/ui/tablet_brief_section.dart';
import 'package:mario_osama/features/contact/ui/contact_section.dart';
import 'package:mario_osama/features/home/ui/mobile_home_section.dart';
import 'package:mario_osama/features/projects/ui/projects_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MobileHomeSection(),
        SizedBox(height: 200),
        BriefSection(),
        SizedBox(height: 100),
        ProjectsSection(),
        SizedBox(height: 100),
        ContactSection(),
      ],
    );
  }
}
