import 'package:flutter/material.dart';

import '../theme/themes_barrel.dart';

class LargeText extends StatelessWidget {
  const LargeText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: LightTextTheme.lightTextTheme.displayLarge,
    );
  }
}
