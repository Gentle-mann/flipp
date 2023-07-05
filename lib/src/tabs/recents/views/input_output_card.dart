import 'package:flutter/material.dart';

import '../../../models/models_barrel.dart';
import '../../../size_configuration.dart';
import '../../../theme/themes_barrel.dart';
import '../../text/views/views_barrel.dart';

class InputOutputCard extends StatelessWidget {
  const InputOutputCard({
    super.key,
    required this.translation,
  });
  final Translation translation;

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size * 2,
        vertical: size * 2.5,
      ),
      width: double.infinity,
      //height: size * 10,
      margin: EdgeInsets.only(bottom: size),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(size * 2),
      ),
      child: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  translation.input,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: LightTextTheme.lightTextTheme.displaySmall,
                ),
                const Divider(),
                Text(
                  translation.output,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: LightTextTheme.lightTextTheme.displaySmall,
                ),
              ],
            ),
          ),
          const TranslationActionRow(),
        ],
      ),
    );
  }
}
