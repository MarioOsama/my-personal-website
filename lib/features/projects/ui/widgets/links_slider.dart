import 'package:flutter/material.dart';
import 'package:mario_osama/features/projects/ui/widgets/project_links_container.dart';

class LinksSlider extends StatefulWidget {
  const LinksSlider({super.key});

  @override
  State<LinksSlider> createState() => _LinksSliderState();
}

class _LinksSliderState extends State<LinksSlider> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: _onHover,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 1000),
        reverseDuration: const Duration(milliseconds: 500),
        switchInCurve: Curves.bounceOut,
        switchOutCurve: Curves.easeOutQuint,
        transitionBuilder: _buildTransition,
        child:
            isHovered ? const ProjectLinksContainer() : const SizedBox.shrink(),
      ),
    );
  }

  void _onHover(isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
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
}
