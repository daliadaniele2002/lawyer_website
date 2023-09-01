import 'package:flutter/material.dart';
import 'package:lawyer_website/core/widgets/background_image.dart';
import 'package:lawyer_website/core/widgets/header_bottom.dart';
import 'package:lawyer_website/core/widgets/lawyer_sections.dart';

import 'core/theme/theme.dart';
import 'core/widgets/header_top.dart';

class LawyerWebsiteApp extends StatelessWidget {
  const LawyerWebsiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lawyer Website',
      theme: lawyerTheme,
      home: const LawyerWebsite(),
    );
  }
}

class LawyerWebsite extends StatelessWidget {
  const LawyerWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const HeaderTop(),
      ),
      body: const Stack(
        children: [
          BackgroundImage(),
          LawyerSections(),
          HeaderBottom(),
        ],
      ),
    );
  }
}
