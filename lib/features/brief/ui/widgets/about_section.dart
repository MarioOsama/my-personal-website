import 'package:flutter/material.dart';
import 'package:mario_osama/features/brief/ui/widgets/about_text.dart';
import 'package:mario_osama/features/brief/ui/widgets/blue_line.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BlueLine(),
        const SizedBox(width: 20),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.7,
          child: const AboutText(),
        ),
      ],
    );
  }
}
