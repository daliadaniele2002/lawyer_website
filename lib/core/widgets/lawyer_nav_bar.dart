import 'package:flutter/material.dart';
import 'package:lawyer_website/core/theme/extensions/header_extension.dart';

import '../theme/theme.dart';

class LawyerNavBar extends StatefulWidget {
  const LawyerNavBar({Key? key}) : super(key: key);

  @override
  State<LawyerNavBar> createState() => _LawyerNavBarState();
}

class _LawyerNavBarState extends State<LawyerNavBar> {
  List<String> labels = [
    'Услуги',
    'О компании',
    'Наши юристы',
    'Отзывы',
    'Новости',
    'Контакты'
  ];

  List<bool> selections = [false, true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<HeaderTheme>()!;
    return Row(
      children: List.generate(
        labels.length,
        (index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 0.0 : 32),
            child: InkWell(
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () => _selectNavigationButton(index),
              child: Text(
                labels[index],
                style: theme.headerNavButtonStyle.copyWith(
                  color: selections[index] ? AppColors.blue : AppColors.wight,
                  decoration: selections[index] ? TextDecoration.underline : null,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _selectNavigationButton(int index) {
    setState(
      () {
        for (int i = 0; i < labels.length; i++) {
          selections[i] = index == i ? true : false;
        }
      },
    );
  }
}
