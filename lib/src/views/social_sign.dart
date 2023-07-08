import 'package:flipp/src/views/social_media_card.dart';
import 'package:flutter/material.dart';

class SocialSign extends StatelessWidget {
  const SocialSign({super.key, this.isSignIn = true});
  final bool isSignIn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Or ${isSignIn ? 'sign in' : 'sign up'}  with:'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SocialCard(
              icon: 'assets/icons/google-icon.svg',
              press: () {},
            ),
            SocialCard(
              icon: 'assets/icons/facebook-2.svg',
              press: () {},
            ),
          ],
        ),
      ],
    );
  }
}
