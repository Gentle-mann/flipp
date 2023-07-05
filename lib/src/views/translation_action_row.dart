import 'package:flipp/src/tabs/text/views/views_barrel.dart';
import 'package:flutter/material.dart';

import '../size_configuration.dart';

class TranslationActionRow extends StatelessWidget {
  const TranslationActionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TranslationActionIcon(
          size: size,
          icon: Icons.favorite_outlined,
          onPressed: () {},
        ),
        SizedBox(width: size),
        TranslationActionIcon(
          size: size,
          icon: Icons.copy,
          onPressed: () {},
        ),
      ],
    );
  }
}
