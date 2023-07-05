import 'package:flutter/material.dart';

import '../../models/models_barrel.dart';
import 'views/settings_card.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...List.generate(
          Settings.settings.length,
          (index) => SettingsCard(
            iconSrc: Settings.settings[index].iconSrc,
            setting: Settings.settings[index].iconSrc,
          ),
        ),
      ],
    );
  }
}
