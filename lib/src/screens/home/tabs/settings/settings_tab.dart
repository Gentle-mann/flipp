import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/models_barrel.dart';
import '../../../../provider/providers.dart';
import '../../../../views/header.dart';
import 'views/settings_card.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Center(
          child: DefaultHeader(text: 'Settings'),
        ),
        SettingsCard(
          iconSrc: 'assets/icons/profile.svg',
          setting: 'My Profile',
          onTap: () {},
        ),
        SettingsCard(
          iconSrc: 'assets/icons/dark mode.svg',
          setting: 'Dark Mode',
          onTap: () {},
        ),
        SettingsCard(
          iconSrc: 'assets/icons/cursor.svg',
          setting: 'Visit flipp.org',
          onTap: () {},
        ),
        SettingsCard(
          iconSrc: 'assets/icons/logout.svg',
          setting: 'Logout',
          onTap: () {
            Provider.of<FlippStateProvider>(context, listen: false).logout;
          },
        ),
      ],
    );
  }
}
