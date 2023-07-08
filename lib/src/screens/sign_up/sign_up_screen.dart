import 'package:flutter/material.dart';

import '../../size_configuration.dart';
import '../../theme/themes_barrel.dart';
import '../../views/flipp_views_barrel.dart';
import '../../views/social_sign.dart';
import 'sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size * 2,
            vertical: size * 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LargeText(text: '𝔉𝔩𝔦𝔭𝔭!'),
              Text(
                'Hello there,',
                style: LightTextTheme.lightTextTheme.displayLarge,
              ),
              SizedBox(height: size * 4),
              Text('Sign Up', style: LightTextTheme.lightTextTheme.bodyLarge),
              SizedBox(height: size * 3),
              const SignUpForm(),
              SizedBox(height: size * 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style:
                          LightTextTheme.lightTextTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size * 4),
              const SocialSign(isSignIn: false),
            ],
          ),
        ),
      ),
    );
  }
}
