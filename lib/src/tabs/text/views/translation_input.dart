import 'package:flutter/material.dart';

import '../../../theme/themes_barrel.dart';
import 'views_barrel.dart';

class TranslationInput extends StatelessWidget {
  const TranslationInput({
    super.key,
    required this.height,
    required this.size,
  });

  final double height;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size * 2.5),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(
            child: TextField(
              expands: true,
              maxLines: null,
              style: LightTextTheme.lightTextTheme.displaySmall,
            ),
          ),
          const TranslationActionRow(),
        ],
      ),
    );
  }
}
