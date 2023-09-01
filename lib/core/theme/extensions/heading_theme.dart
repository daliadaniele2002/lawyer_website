import 'package:flutter/material.dart';

import '../theme.dart';

class HeadingTheme extends ThemeExtension<HeadingTheme> {
  final TextStyle headingTitleStyle;
  final TextStyle headingDescriptionStyle;

  HeadingTheme({
    required this.headingTitleStyle,
    required this.headingDescriptionStyle,
  });

  @override
  ThemeExtension<HeadingTheme> copyWith() {

    throw UnimplementedError();
  }

  @override
  ThemeExtension<HeadingTheme> lerp(
      covariant ThemeExtension<HeadingTheme>? other, double t) {

    throw UnimplementedError();
  }

  static final standard = HeadingTheme(
    headingTitleStyle: AppFonts.headingTitle.copyWith(
      color: AppColors.hadingTextColor,
    ),
    headingDescriptionStyle: AppFonts.headingDescription.copyWith(
      color: AppColors.hadingTextColor,
    ),
  );
}
