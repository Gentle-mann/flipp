import 'package:flipp/src/tabs/screens/onboarding/views/pages.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OnboardingPages(),
        ],
      ),
    );
  }
}
