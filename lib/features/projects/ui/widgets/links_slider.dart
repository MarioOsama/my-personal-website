import 'package:flutter/material.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_links_container.dart';

class LinksSlider extends StatelessWidget {
  LinksSlider({super.key});
  final ValueNotifier<bool> _isHoveredNotifier = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: _onHover,
      child: ValueListenableBuilder(
        valueListenable: _isHoveredNotifier,
        child: const ProjectLinksContainer(),
        builder: (context, value, child) => AnimatedSwitcher(
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 500),
          switchInCurve: Curves.bounceOut,
          switchOutCurve: Curves.easeOutQuint,
          transitionBuilder: _buildTransition,
          child: value ? child! : const SizedBox.shrink(),
        ),
      ),
    );
  }

  Widget _buildTransition(child, animation) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }

  void _onHover(bool value) {
    _isHoveredNotifier.value = value;
  }
}
