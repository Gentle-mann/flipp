import 'package:flipp/src/screens/sign_in/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../form_validators.dart';
import '../../provider/providers.dart';
import '../../size_configuration.dart';
import '../../theme/themes_barrel.dart';
import '../../views/flipp_views_barrel.dart';
import '../../views/social_media_card.dart';
import '../../views/social_sign.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfiguration().initialize(context);
    FormValidators().initialize(context);
    final size = SizeConfiguration.defaultSize;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size * 3,
            vertical: size * 2,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LargeText(text: '𝔉𝔩𝔦𝔭𝔭!'),
                SizedBox(height: size * 4),
                Text('Welcome back,',
                    style: LightTextTheme.lightTextTheme.displayLarge),
                SizedBox(height: size * 2),
                Text(
                  'Sign in with your email and password.',
                  style: LightTextTheme.lightTextTheme.displaySmall,
                ),
                SizedBox(height: size * 4),
                const SignInForm(),
                SizedBox(height: size * 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        const Text('Remember me?')
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Reset password',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size * 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account yet?'),
                    TextButton(
                      onPressed: () {
                        context.pushNamed('signup');
                      },
                      child: Text(
                        'Sign up!',
                        style: LightTextTheme.lightTextTheme.displaySmall!
                            .copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size * 4),
                const SocialSign(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
