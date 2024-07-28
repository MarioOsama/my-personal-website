import 'package:flutter/material.dart';
import 'package:mario_osama/home/ui/tablet_home_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TabletHomeSection(),
        ],
      ),
    );
  }
}
