import 'package:flipp/src/screens/home/tabs/recents/views/views_barrel.dart';
import 'package:flutter/material.dart';

import '../../../../models/models_barrel.dart';
import '../../../../size_configuration.dart';
import '../../../../views/header.dart';
import '../../../../theme/light_theme/text_theme.dart';

class RecentsTab extends StatelessWidget {
  const RecentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final translations = Translation.translations;
    final size = SizeConfiguration.defaultSize;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, Khalifa',
          style: LightTextTheme.lightTextTheme.bodyLarge,
        ),
        SizedBox(height: size * 2),
        Text(
          'Recents',
          style: LightTextTheme.lightTextTheme.displayLarge,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: translations.length,
            itemBuilder: (context, index) {
              return InputOutputCard(
                translation: translations[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
