import 'package:flipp/src/screens/home/tabs/text/views/views_barrel.dart';
import 'package:flutter/material.dart';

import '../../../../../size_configuration.dart';
import '../../../../../theme/themes_barrel.dart';

class TranslationOutput extends StatelessWidget {
  const TranslationOutput({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size * 2),
      child: Container(
        padding: EdgeInsets.only(
          top: size * 2,
          right: size * 2.5,
          left: size * 2.5,
        ),
        height: height * 0.25,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(size * 2),
        ),
        child: Column(
          children: [
            Expanded(
              child: Text(
                'Output Translation',
                style: LightTextTheme.lightTextTheme.displaySmall,
                maxLines: null,
              ),
            ),
            const TranslationActionRow(),
          ],
        ),
      ),
    );
  }
}
