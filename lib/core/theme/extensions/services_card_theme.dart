import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lawyer_website/core/theme/constants/app_fonts.dart';

import 'lawyer_card_abstract_theme.dart';

class ServicesCardTheme extends ThemeExtension<ServicesCardTheme>
    implements LawyerCardTheme {
  final double width;
  final double height;
  final TextStyle titleTextStyle;
  final TextStyle descriptionTextStyle;

  ServicesCardTheme({
    required this.width,
    required this.height,
    required this.titleTextStyle,
    required this.descriptionTextStyle,
  });

  ThemeExtension<ServicesCardTheme> copyWith() {

    throw UnimplementedError();
  }

  @override
  ThemeExtension<ServicesCardTheme> lerp(
      covariant ThemeExtension<ServicesCardTheme>? other, double t) {

    throw UnimplementedError();
  }

  static final standard = ServicesCardTheme(
    width: 424,
    height: 250,
    titleTextStyle: AppFonts.serviceCardTitle,
    descriptionTextStyle: AppFonts.serviceCardDescription,
  );

  @override
  getDescriptionTextStyle() {
    return descriptionTextStyle;
  }

  @override
  getTitleTextStyle() {
    return titleTextStyle;
  }
}
