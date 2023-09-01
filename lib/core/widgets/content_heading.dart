import 'package:flutter/material.dart';
import 'package:lawyer_website/core/theme/extensions/heading_theme.dart';

import 'lawyer_divider.dart';

class ContentHeading extends StatelessWidget {
  const ContentHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<HeadingTheme>()!;
    return Column(
      children: [
        Text(
          'НАШИ УСЛУГИ',
          style: theme.headingTitleStyle,
        ),
        const SizedBox(height: 10),
        const LawyerDivider(),
        const SizedBox(height: 24),
        Text(
          'Давно выяснено, что при оценке дизайна и композиции '
          'читаемый текст мешает сосредоточиться. Lorem Ipsum '
          'используют потому, что тот обеспечивает более или '
          'менее стандартное заполнение шаблона',
          style: theme.headingDescriptionStyle,
          textAlign: TextAlign.center,
          softWrap: true,
        ),
      ],
    );
  }
}
