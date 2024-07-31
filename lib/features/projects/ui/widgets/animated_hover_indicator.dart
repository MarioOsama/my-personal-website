import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';

class AnimatedHoverIndicator extends StatefulWidget {
  const AnimatedHoverIndicator({
    super.key,
  });

  @override
  State<AnimatedHoverIndicator> createState() => _AnimatedHoverIndicatorState();
}

class _AnimatedHoverIndicatorState extends State<AnimatedHoverIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this)
      ..repeat(reverse: true);
    _addValueListener();
    _addStatusListener();

    _animation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(10, 10, 0, 0),
      end: const RelativeRect.fromLTRB(50, 10, 0, 0),
    ).animate(_controller);
  }

  void _addValueListener() {
    _controller.addListener(() {
      if (_controller.value > 0.9) {
        Future.delayed(const Duration(milliseconds: 5000), () {
          _controller.reset();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PositionedTransition(
      rect: _animation,
      child: const Icon(
        Icons.mouse,
        size: 25,
        color: AppColors.blueBlackColor,
      ),
    );
  }

  void _addStatusListener() {
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        Future.delayed(const Duration(milliseconds: 5000), () {
          _controller.repeat(reverse: true);
        });
      }
    });
  }
}
