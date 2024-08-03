import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mario_osama/core/cubit/scrolling_cubit.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/widgets/adaptive_layout.dart';
import 'package:mario_osama/core/widgets/custom_app_bar.dart';
import 'package:mario_osama/desktop_layout.dart';
import 'package:mario_osama/mobile_layout.dart';
import 'package:mario_osama/tablet_layout.dart';

class MarioOsama extends StatelessWidget {
  const MarioOsama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: 'Mario Osama',
      home: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          controller: context.read<ScrollingCubit>().state,
          child: AdaptiveLayout(
            desktopLayout: (context) => const DesktopLayout(),
            tabletLayout: (context) => const TabletLayout(),
            mobileLayout: (context) => const MobileLayout(),
          ),
        ),
      ),
    );
  }
}
