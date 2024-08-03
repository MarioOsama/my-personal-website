import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialActionItem extends StatelessWidget {
  SocialActionItem(
      {super.key, required this.title, required this.icon, required this.url});

  final String title;
  final String icon;
  final String url;
  final ValueNotifier<bool> _isHoveredNotifier = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: () async {
        await _onTap();
      },
      onHover: (hover) {
        _isHoveredNotifier.value = hover;
      },
      child: ValueListenableBuilder<bool>(
        valueListenable: _isHoveredNotifier,
        child: _buildChild(),
        builder: (context, value, child) => AnimatedContainer(
          padding: const EdgeInsets.all(5),
          duration: const Duration(milliseconds: 500),
          curve: Curves.linear,
          decoration: _buildDecoration(value),
          child: child!,
        ),
      ),
    );
  }

  SvgPicture _buildChild() {
    return SvgPicture.asset(
      icon,
      height: 40,
    );
  }

  BoxDecoration _buildDecoration(bool isHovered) {
    return BoxDecoration(
      border: Border.all(
        color: isHovered ? AppColors.greyColor : Colors.white,
      ),
      borderRadius: BorderRadius.circular(10),
      color: isHovered ? AppColors.lightGreyColor : Colors.white,
    );
  }

  Future<void> _onTap() async {
    final Uri targetedUrl = Uri.parse(url);
    if (await canLaunchUrl(targetedUrl)) {
      await launchUrl(targetedUrl);
    } else {
      throw Exception('Could not launch $targetedUrl');
    }
  }
}
