import 'package:flutter/material.dart';

import '../../../theme/themes_barrel.dart';

class LanguageTitle extends StatelessWidget {
  const LanguageTitle({
    super.key,
    required this.title,
    required this.size,
  });
  final String title;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: LightTextTheme.lightTextTheme.bodySmall);
  }
}
