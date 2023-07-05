import 'package:flutter/material.dart';

import '../../size_configuration.dart';
import 'views/views_barrel.dart';

class TextTab extends StatelessWidget {
  const TextTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;
    final height = SizeConfiguration.screenHeight;
    return ListView(
      children: [
        ChooseLanguages(size: size),
        SizedBox(height: size * 3),
        TranslationInput(height: height, size: size),
        SizedBox(height: size * 4),
        TranslationOutput(height: height),
      ],
    );
  }
}
