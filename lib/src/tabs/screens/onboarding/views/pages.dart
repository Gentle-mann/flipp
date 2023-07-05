import 'package:flipp/src/models/models_barrel.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../size_configuration.dart';
import 'image.dart';

class OnboardingPages extends StatelessWidget {
  const OnboardingPages({super.key});

  @override
  Widget build(BuildContext context) {
    final height = SizeConfiguration.screenHeight;
    final details = OnboardingDetail.onboardingDetails;
    final PageController controller = PageController();

    return Column(
      children: [
        SizedBox(
          height: height * 0.5,
          child: PageView.builder(
              controller: controller,
              itemCount: details.length,
              itemBuilder: (context, index) {
                return OnboardingImage(
                  onboardingDetail: details[index],
                );
              }),
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: const ExpandingDotsEffect(),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Skip'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Next'),
          ),
        ])
      ],
    );
  }
}
