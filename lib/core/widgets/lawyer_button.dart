import 'package:flutter/material.dart';

import '../theme/theme.dart';

class LawyerButton extends StatelessWidget {
  final String text;
  final Function() onClick;

  const LawyerButton({Key? key, required this.text, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<LawyerButtonTheme>()!;
    return TextButton(
      onPressed: onClick,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.blue),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Text(
          text,
          style: theme.buttonTextStyle,
        ),
      ),
    );
  }
}
