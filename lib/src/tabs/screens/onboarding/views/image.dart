import 'package:flipp/src/models/models_barrel.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_configuration.dart';
import '../../../../theme/themes_barrel.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key, required this.onboardingDetail});
  final OnboardingDetail onboardingDetail;

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;

    return Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Image.asset(
              onboardingDetail.imageSrc,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: size * 2),
        Text(
          onboardingDetail.description,
          style: LightTextTheme.lightTextTheme.displaySmall!
              .copyWith(color: kPrimaryColor),
        ),
      ],
    );
  }
}
