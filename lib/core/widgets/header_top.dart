import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'contacts_label.dart';
import 'lawyer_container.dart';

class HeaderTop extends StatelessWidget {
  const HeaderTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<HeaderTheme>()!;
    return LawyerContainer(
      color: AppColors.headerColor,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(
        children: [
          const ContactLabel(
            imagePath: 'assets/svg/phone.svg',
            text: '+7 (922) 022-94-82',
          ),
          const SizedBox(width: 28),
          const ContactLabel(
            imagePath: 'assets/svg/mail.svg',
            text: 'janis62@yahoo.com',
          ),
          const Spacer(),
          TextButton(
            onPressed: (){},
            child: Text(
              'Заказать звонок',
              style: theme.headerButtonStyle,
            ),
          ),
        ],
      ),
    );
  }
}
