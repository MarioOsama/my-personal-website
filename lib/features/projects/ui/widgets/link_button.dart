import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    super.key,
    required this.title,
    required this.imagePath,
    required this.link,
  });

  factory LinkButton.icon({
    required String imagePath,
    required String link,
  }) {
    return LinkButton(
      title: null,
      imagePath: imagePath,
      link: link,
    );
  }

  final String imagePath;
  final String? title;
  final String link;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onLinkPressed,
      style: _buildButtonStyle(),
      child: title != null ? _buildButton(context) : _buildIconButton(),
    );
  }

  Image _buildIconButton() {
    return Image.asset(
      imagePath,
      height: 25,
      width: 25,
      color: AppColors.blueBlackColor,
    );
  }

  Row _buildButton(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildIconButton(),
        const SizedBox(width: 10),
        Text(
          title!,
          style: AppTextStyles.font16WhiteMedium(context),
        ),
      ],
    );
  }

  ButtonStyle _buildButtonStyle() {
    return ButtonStyle(
      padding: WidgetStateProperty.all(
        title != null
            ? const EdgeInsets.all(20)
            : const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      backgroundColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.hovered)) {
            return AppColors.blueColor;
          }
          return AppColors.purpleColor;
        },
      ),
    );
  }

  void _onLinkPressed() async {
    final Uri targetedUrl = Uri.parse(link);
    if (await canLaunchUrl(targetedUrl)) {
      await launchUrl(targetedUrl);
    } else {
      throw Exception('Could not launch $targetedUrl');
    }
  }
}
