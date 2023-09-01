import 'package:flutter/material.dart';
import 'package:lawyer_website/core/theme/extensions/header_extension.dart';
import 'package:lawyer_website/core/theme/extensions/heading_theme.dart';
import 'package:lawyer_website/core/theme/extensions/lawyer_button_theme.dart';

import 'extensions/services_card_theme.dart';

final lawyerTheme = ThemeData(
  extensions: extensions,
);

get extensions => <ThemeExtension<dynamic>>[
      HeaderTheme.standard,
      LawyerButtonTheme.standard,
      HeadingTheme.standard,
      ServicesCardTheme.standard,
    ];
