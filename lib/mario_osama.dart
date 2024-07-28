import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/widgets/adaptive_layout.dart';
import 'package:mario_osama/desktop_layout.dart';
import 'package:mario_osama/mobile_layout.dart';
import 'package:mario_osama/tablet_layout.dart';

class MarioOsama extends StatelessWidget {
  const MarioOsama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mario Osama',
      home: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: AdaptiveLayout(
          desktopLayout: (context) => const DesktopLayout(),
          tabletLayout: (context) => const TabletLayout(),
          mobileLayout: (context) => const MobileLayout(),
        ),
      ),
    );
  }
}
