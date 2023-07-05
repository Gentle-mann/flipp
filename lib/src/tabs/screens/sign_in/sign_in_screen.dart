import 'package:flipp/src/views/field_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../provider/providers.dart';
import '../../../size_configuration.dart';
import '../../../theme/themes_barrel.dart';
import '../../tabs.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfiguration().init(context);
    final size = SizeConfiguration.defaultSize;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HomeButton(),
            Text(
              '𝔉𝔩𝔦𝔭𝔭!',
              style: LightTextTheme.lightTextTheme.displayLarge,
            ),
            SizedBox(height: size * 4),
            const FieldForm(),
          ],
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        final index = Provider.of<FlippStateProvider>(context, listen: false)
            .currentIndex;
        context.goNamed(
          'home',
          pathParameters: {'tab': '$index'},
        );
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) {
        //       return const HomeScreen(selectedTab: 1);
        //     },
        //   ),
        // );
      },
      child: Text(
        'Home',
        style: LightTextTheme.lightTextTheme.displaySmall,
      ),
    );
  }
}
