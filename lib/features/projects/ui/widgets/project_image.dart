import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/features/projects/ui/widgets/link_button.dart';
import 'package:mario_osama/features/projects/ui/widgets/links_slider.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage(
      {super.key,
      required this.imageUrl,
      required this.hoverable,
      this.width,
      this.height});
  final String imageUrl;
  final bool hoverable;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        hoverable ? _buildHoverableImage() : _buildNonHoverableImage(),

        // if (withHoverIndicator) const AnimatedHoverIndicator(),
      ],
    );
  }

  Container _buildHoverableImage() {
    return Container(
      width: width ?? 600,
      height: height ?? 400,
      decoration: _buildDecoration(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: LinksSlider(),
      ),
    );
  }

  Container _buildNonHoverableImage() {
    return Container(
      width: width ?? 500,
      height: height ?? 300,
      decoration: _buildDecoration(),
      child: Align(
        alignment: Alignment.topRight,
        child: LinkButton.icon(
          imagePath: 'assets/images/png/github.png',
        ),
      ),
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
