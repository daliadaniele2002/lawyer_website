import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'lawyer_container.dart';
import 'lawyer_logo.dart';
import 'lawyer_nav_bar.dart';

class HeaderBottom extends StatelessWidget {
  const HeaderBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LawyerContainer(
      color: AppColors.headerColor.withOpacity(0.75),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Row(
          children: [
            LawyerLogo(),
            Spacer(),
            LawyerNavBar(),
          ],
        ),
      ),
    );
  }
}
