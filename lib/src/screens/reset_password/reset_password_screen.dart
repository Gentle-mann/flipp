import 'package:flutter/material.dart';

import '../../views/flipp_views_barrel.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            LargeText(
              text: 'Reset Password',
            ),
          ],
        ),
      ),
    );
  }
}
