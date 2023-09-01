import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/theme.dart';

class ContactLabel extends StatelessWidget {
  final String imagePath;
  final String text;

  const ContactLabel({
    super.key,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<HeaderTheme>()!;
    return Row(
      children: [
        SvgPicture.asset(imagePath),
        const SizedBox(width: 8),
        Text(
          text,
          style: theme.headerContactsStyle,
        ),
      ],
    );
  }
}