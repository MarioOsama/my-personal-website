import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/home/ui/widgets/landing_screen_header.dart';
import 'package:mario_osama/home/ui/widgets/main_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )
      ..repeat()
      ..addListener(() {
        setState(() {
          opacity = _controller.value;
        });
      });

    _animation = Tween<Offset>(
      begin: const Offset(0, -0.2),
      end: const Offset(0, 0.3),
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: LandingScreenHeader(),
        ),
        const SizedBox(height: 120),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: MainSection(),
        ),
        Container(
          width: 20,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.greyColor),
            borderRadius: BorderRadius.circular(50),
          ),
          child: SlideTransition(
            position: _animation,
            child: Opacity(
              opacity: 1 - opacity,
              child: const Icon(
                Icons.circle,
                size: 10,
                color: AppColors.greyColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
