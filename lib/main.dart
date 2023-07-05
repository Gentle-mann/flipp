import 'package:flipp/src/theme/themes_barrel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/provider/flipp_state_provider.dart';
import 'src/routing/flipp_router.dart';

void main() {
  runApp(const Flipp());
}

class Flipp extends StatelessWidget {
  const Flipp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = LightTheme.theme();
    final router = FlippRouter.router;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return FlippStateProvider();
          },
        ),
      ],
      child: MaterialApp.router(
        title: 'Flipp',
        theme: theme,
        debugShowCheckedModeBanner: false,
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
