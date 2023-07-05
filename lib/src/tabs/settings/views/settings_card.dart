import 'package:flipp/src/size_configuration.dart';
import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key, required this.iconSrc, required this.setting});
  final String iconSrc;
  final String setting;

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          size * 2,
        ),
      ),
      child: Row(),
    );
  }
}
