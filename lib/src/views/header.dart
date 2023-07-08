import 'package:flutter/widgets.dart';

import '../theme/themes_barrel.dart';

class DefaultHeader extends StatelessWidget {
  const DefaultHeader({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: LightTextTheme.lightTextTheme.titleLarge,
    );
  }
}
