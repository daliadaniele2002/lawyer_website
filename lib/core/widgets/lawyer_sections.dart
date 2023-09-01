import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lawyer_website/core/theme/constants/app_colors.dart';
import 'package:lawyer_website/core/theme/extensions/lawyer_card_abstract_theme.dart';
import 'package:lawyer_website/core/theme/extensions/services_card_theme.dart';
import 'package:lawyer_website/core/widgets/content_container.dart';
import 'package:lawyer_website/core/widgets/lawyer_button.dart';

import 'about_company_section.dart';
import 'content_heading.dart';

class LawyerSections extends StatelessWidget {
  const LawyerSections({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const AboutCompanySection(),
              ContentContainer(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 200),
                      child: ContentHeading(),
                    ),
                    const SizedBox(height: 48),
                    SizedBox(height:500, child: CardsGrid(rowsCount: 2)),
                    const SizedBox(height: 48),
                    LawyerButton(
                      text: 'ВСЕ УСЛУГИ',
                      onClick: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CardsGrid extends StatelessWidget {
  CardsGrid({
    super.key,
    required this.rowsCount,
  });

  final list = [
    {
      'title': 'Сопровождение сделок',
      'description':
          'Инициирование, оформление, осуществление сделки и достижение результата — это именно то, чем мы занимаемся каждый день.'
    },
    {
      'title': 'Банкротство физических лиц',
      'description':
          'Процедуру банкротства физических лиц в России регулирует закон'
              ' «О несостоятельности (банкротстве)». ',
    },
    {
      'title': 'Корпоративные споры',
      'description':
          'Корпоративные споры – споры, связанные с созданием юрлица,'
              ' управлением или участием в нем',
    },
    {
      'title': 'Банкротство физических лиц',
      'description':
          'Процедуру банкротства физических лиц в России регулирует закон'
              ' «О несостоятельности (банкротстве)». ',
    },
    {
      'title': 'Сопровождение сделок',
      'description':
          'Инициирование, оформление, осуществление сделки и достижение'
              ' результата — это именно то, чем мы занимаемся каждый день.',
    },
    {
      'title': 'Корпоративные споры',
      'description':
          'Корпоративные споры – споры, связанные с созданием юрлица,'
              ' управлением или участием в нем',
    },
  ];

  final int rowsCount;

  @override
  Widget build(BuildContext context) {
    final crossAxisCont = (list.length / rowsCount).ceil();
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 24,
          mainAxisSpacing: 38,
          crossAxisCount: crossAxisCont),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final theme = Theme.of(context).extension<ServicesCardTheme>()!;
        return Center(
          child: LawyerCard(
            title: list[index]['title']!,
            description: list[index]['description']!,
            theme: theme,
          ),
        );
      },
    );
  }
}

class LawyerCard extends StatelessWidget {
  final String title;
  final String description;
  final LawyerCardTheme theme;

  const LawyerCard({
    super.key,
    required this.title,
    required this.description,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/svg/agreement.svg',
              color: AppColors.wight,
            ),
            SizedBox(height: 15),
            Text(
              title,
              style: theme.getTitleTextStyle(),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: theme.getDescriptionTextStyle(),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CornerDecorations extends StatelessWidget {
  const CornerDecorations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CardCornerDecoration.leftTop(
              BorderSide(
                width: 1,
                color: AppColors.wight,
              ),
            ),
            Spacer(),
            CardCornerDecoration.rightTop(
              BorderSide(
                width: 1,
                color: AppColors.wight,
              ),
            ),
          ],
        ),
        Spacer(),
        Row(
          children: [
            CardCornerDecoration.leftBot(
              BorderSide(
                width: 1,
                color: AppColors.wight,
              ),
            ),
            Spacer(),
            CardCornerDecoration.rightBot(
              BorderSide(
                width: 1,
                color: AppColors.wight,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CardCornerDecoration extends StatelessWidget {
  final Border border;

  const CardCornerDecoration({
    super.key,
    required this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: border,
      ),
      height: 35,
      width: 35,
    );
  }

  static Widget leftTop(BorderSide borderSide) {
    return CardCornerDecoration(
      border: Border(
        left: borderSide,
        top: borderSide,
      ),
    );
  }

  static Widget rightTop(BorderSide borderSide) {
    return CardCornerDecoration(
      border: Border(
        right: borderSide,
        top: borderSide,
      ),
    );
  }

  static Widget leftBot(BorderSide borderSide) {
    return CardCornerDecoration(
      border: Border(
        left: borderSide,
        bottom: borderSide,
      ),
    );
  }

  static Widget rightBot(BorderSide borderSide) {
    return CardCornerDecoration(
      border: Border(
        right: borderSide,
        bottom: borderSide,
      ),
    );
  }
}
