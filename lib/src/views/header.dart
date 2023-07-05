import 'package:flutter/widgets.dart';

import '../theme/themes_barrel.dart';

class DefaultHeader extends StatelessWidget {
  const DefaultHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: LightTextTheme.lightTextTheme.titleLarge,
    );
  }
}
