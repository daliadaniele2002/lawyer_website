import 'package:flutter/material.dart';

import '../theme/theme.dart';

class LawyerDivider extends StatelessWidget {
  const LawyerDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue,
      height: 3,
      width: 50,
    );
  }
}
