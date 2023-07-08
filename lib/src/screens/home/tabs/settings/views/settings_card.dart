import 'package:flipp/src/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../theme/themes_barrel.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    required this.iconSrc,
    required this.setting,
    required this.onTap,
  });
  final String iconSrc;
  final String setting;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: size * 6,
        margin: EdgeInsets.all(size),
        padding: EdgeInsets.all(size),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            size * 2,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconSrc,
              height: size * 2,
              width: size * 2,
              fit: BoxFit.cover,
            ),
            SizedBox(width: size * 2),
            Text(
              setting,
              style: LightTextTheme.lightTextTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
