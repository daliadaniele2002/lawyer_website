import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'lawyer_container.dart';

class ContentContainer extends StatelessWidget {
  final Widget child;
  final Color color;

  const ContentContainer(
      {Key? key, required this.child, this.color = AppColors.contentBgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: LawyerContainer(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: child,
        ),
      ),
    );
  }
}
