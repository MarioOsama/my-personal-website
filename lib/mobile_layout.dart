import 'package:flutter/material.dart';
import 'package:mario_osama/home/ui/mobile_home_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MobileHomeSection(),
      ],
    );
  }
}
