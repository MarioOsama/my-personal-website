import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mario_osama/core/theming/app_colors.dart';
import 'package:mario_osama/core/theming/app_text_styles.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    super.key,
    required this.title,
    required this.imagePath,
    this.onPressed,
  });

  factory LinkButton.icon({
    required String imagePath,
    VoidCallback? onPressed,
  }) {
    return LinkButton(
      imagePath: imagePath,
      title: null,
    );
  }

  final String imagePath;
  final String? title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      style: _buildButtonStyle(),
      child: title != null ? _buildButton() : _buildIconButton(),
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

  Row _buildButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildIconButton(),
        const SizedBox(width: 10),
        Text(
          title!,
          style: AppTextStyles.font16WhiteMedium,
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
}
