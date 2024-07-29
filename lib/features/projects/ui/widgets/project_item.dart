import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class ProjectItem extends StatefulWidget {
  const ProjectItem(
      {super.key, required this.imageUrl, required this.description});

  final String imageUrl;
  final String description;

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: _onProjectHover,
      child: Container(
        width: 350,
        height: 250,
        decoration: _buildDecoration(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: _buildAnimatedSwitcher(),
        ),
      ),
    );
  }

  AnimatedSwitcher _buildAnimatedSwitcher() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: _buildTransition,
      child:
          isHovered ? _buildProjectBriefContainer() : const SizedBox.shrink(),
    );
  }

  void _onProjectHover(isHovered) {
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

  Container _buildProjectBriefContainer() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      color: AppColors.blueBlackColor.withOpacity(0.75),
      child: Text(
        widget.description,
        textAlign: TextAlign.center,
        style: AppTextStyles.font16WhiteMedium,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: AppColors.whiteColor,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(widget.imageUrl),
      ),
    );
  }
}
