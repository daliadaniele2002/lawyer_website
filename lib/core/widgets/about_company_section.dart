import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'lawyer_button.dart';
import 'lawyer_container.dart';

class AboutCompanySection extends StatelessWidget {
  const AboutCompanySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return  SizedBox(
      height: height,
      child: LawyerContainer(
        color: Colors.transparent,
        child: Column(
          children: [
            const SizedBox(height: 260),
            Text(
              'ОКАЗЫВАЕМ ВЕСЬ КОМПЛЕКС',
              style: AppFonts.aboutUsH2.copyWith(color: AppColors.wight),
            ),
            const SizedBox(height: 8),
            Text('ЮРИДИЧЕСКИХ УСЛУГ',
                style: AppFonts.aboutUsH1.copyWith(color: AppColors.blue)),
            const SizedBox(height: 8),
            Text(
              'Давно выяснено, что при оценке дизайна и композиции читаемый'
              ' текст мешает сосредоточиться. Lorem Ipsum используют потому, '
              'что тот обеспечивает более или менее стандартное заполнение.',
              style: AppFonts.aboutUsP.copyWith(color: AppColors.wight),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            LawyerButton(text: 'Наши услуги', onClick: () {}),
          ],
        ),
      ),
    );
  }
}
