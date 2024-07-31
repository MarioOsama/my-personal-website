import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/features/projects/ui/widgets/links_slider.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage(
      {super.key, required this.imageUrl, required this.withHoverIndicator});
  final String imageUrl;
  final bool withHoverIndicator;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: 500,
          height: 300,
          decoration: _buildDecoration(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: const LinksSlider(),
          ),
        ),
        // if (withHoverIndicator) const AnimatedHoverIndicator(),
      ],
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: AppColors.whiteColor,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(imageUrl),
      ),
      boxShadow: [
        BoxShadow(
          color: AppColors.blackGreyColor.withOpacity(0.5),
          offset: const Offset(0, 10),
          blurRadius: 10,
        ),
      ],
    );
  }
}
