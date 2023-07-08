import 'package:flipp/src/models/models_barrel.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_configuration.dart';
import '../../../theme/themes_barrel.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({
    super.key,
    required this.imageSrc,
    required this.description,
    required this.aspectRatio,
  });
  final String imageSrc;
  final String description;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;

    return Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: aspectRatio,
            child: Image.asset(
              imageSrc,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: size * 2),
        Text(
          description,
          style: LightTextTheme.lightTextTheme.displaySmall!
              .copyWith(color: kPrimaryColor),
        ),
      ],
    );
  }
}
