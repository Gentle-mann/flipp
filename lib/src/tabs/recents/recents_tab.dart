import 'package:flipp/src/tabs/recents/views/views_barrel.dart';
import 'package:flutter/material.dart';

import '../../models/models_barrel.dart';
import '../../views/header.dart';

class RecentsTab extends StatelessWidget {
  const RecentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const DefaultHeader(title: 'Recents'),
        ...List.generate(
          Translation.translations.length,
          (index) => InputOutputCard(
            translation: Translation.translations[index],
          ),
        ),
      ],
    );
  }
}
