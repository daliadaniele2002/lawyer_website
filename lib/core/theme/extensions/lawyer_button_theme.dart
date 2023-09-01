import 'package:flutter/material.dart';

import '../theme.dart';

class LawyerButtonTheme extends ThemeExtension<LawyerButtonTheme> {
  final TextStyle buttonTextStyle;

  LawyerButtonTheme({required this.buttonTextStyle});

  @override
  ThemeExtension<LawyerButtonTheme> copyWith() {

    throw UnimplementedError();
  }

  @override
  ThemeExtension<LawyerButtonTheme> lerp(
      covariant ThemeExtension<LawyerButtonTheme>? other, double t) {

    throw UnimplementedError();
  }

  static final standard = LawyerButtonTheme(
    buttonTextStyle: AppFonts.buttonTextStyle.copyWith(
      color: AppColors.wight,
    ),
  );
}
