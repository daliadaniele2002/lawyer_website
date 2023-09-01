import 'package:flutter/material.dart';

import '../theme/theme.dart';

class LawyerLogo extends StatelessWidget {
  const LawyerLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<HeaderTheme>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ПРАВОЗАЩИТНИК',
          style: theme.headerTitleStyle,
        ),
        Text(
          'юридическая компания',
          style: theme.headerSubTitleStyle,
        ),
      ],
    );
  }
}
