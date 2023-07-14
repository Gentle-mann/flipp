import 'package:flipp/src/screens/onboarding/views/pages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../provider/providers.dart';
import '../../size_configuration.dart';
import '../../views/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: size * 2),
          child: Column(
            children: [
              const OnboardingPages(),
              SizedBox(height: size * 4),
              CustomButton(
                onPressed: () {
                  Provider.of<FlippStateProvider>(context, listen: false)
                      .onboard();

                  context.goNamed('home', pathParameters: {
                    'tab': '0',
                  });
                },
                text: 'Skip',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
