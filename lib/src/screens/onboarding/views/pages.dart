import 'package:flipp/src/models/models_barrel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../provider/providers.dart';
import '../../../size_configuration.dart';
import '../../../views/flipp_views_barrel.dart';
import 'image.dart';

class OnboardingPages extends StatelessWidget {
  const OnboardingPages({super.key});

  @override
  Widget build(BuildContext context) {
    final height = SizeConfiguration.screenHeight;
    final details = OnboardingDetail.onboardingDetails;
    final size = SizeConfiguration.defaultSize;
    final PageController controller = PageController();

    return Column(
      children: [
        const LargeText(text: '𝔉𝔩𝔦𝔭𝔭!'),
        SizedBox(
          height: height * 0.6,
          child: PageView(
            controller: controller,
            children: const [
              OnboardingImage(
                imageSrc: 'assets/images/text.png',
                description:
                    'Translate any text across 90+ languages\nFast. Nice. Easy',
                aspectRatio: 1 / 1,
              ),
              OnboardingImage(
                imageSrc: 'assets/images/speech.png',
                description:
                    'Translate audio using Flipp.\nIt is seamless and smooth',
                aspectRatio: 1 / 1,
              ),
              OnboardingImage(
                imageSrc: 'assets/images/like.jpeg',
                description:
                    'Like and save your favorite translations.\nSetup Flipp exactly as you want it!',
                aspectRatio: 1 / 1,
              ),
            ],
          ),
        ),
        SizedBox(height: size * 8),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: const ExpandingDotsEffect(),
        ),
      ],
    );
  }
}
