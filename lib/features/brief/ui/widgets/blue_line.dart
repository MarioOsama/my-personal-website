import 'package:flutter/material.dart';
import 'package:mario_osama/core/theming/app_colors.dart';

class BlueLine extends StatelessWidget {
  const BlueLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: const Border(
          top: BorderSide(
            color: AppColors.blueColor,
            width: 3,
          ),
        ),
      ),
    );
  }
}
