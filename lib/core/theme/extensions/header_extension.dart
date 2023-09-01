import 'package:flutter/material.dart';

import '../theme.dart';

class HeaderTheme extends ThemeExtension<HeaderTheme> {
  final TextStyle headerTitleStyle;
  final TextStyle headerSubTitleStyle;
  final TextStyle headerContactsStyle;
  final TextStyle headerButtonStyle;
  final TextStyle headerNavButtonStyle;

  HeaderTheme({
    required this.headerSubTitleStyle,
    required this.headerTitleStyle,
    required this.headerNavButtonStyle,
    required this.headerButtonStyle,
    required this.headerContactsStyle,
  });

  @override
  ThemeExtension<HeaderTheme> copyWith() {

    throw UnimplementedError();
  }

  @override
  ThemeExtension<HeaderTheme> lerp(
      covariant ThemeExtension<HeaderTheme>? other, double t) {

    throw UnimplementedError();
  }

  static final standard = HeaderTheme(
    headerTitleStyle: AppFonts.headerTitleText.copyWith(
      color: AppColors.blue,
    ),
    headerSubTitleStyle: AppFonts.headerSubTitleText.copyWith(
      color: AppColors.wight,
    ),
    headerContactsStyle: AppFonts.headerContactsText.copyWith(
      color: AppColors.wight,
    ),
    headerButtonStyle: AppFonts.headerNavButtonText.copyWith(
      color: AppColors.blue,
    ),
    headerNavButtonStyle: AppFonts.headerNavButtonText,
  );
}
