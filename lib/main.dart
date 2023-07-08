import 'package:flipp/src/provider/providers.dart';
import 'package:flipp/src/theme/themes_barrel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/routing/flipp_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final flippStateProvider = FlippStateProvider();
  runApp(
    Flipp(flippStateProvider: flippStateProvider),
  );
}

class Flipp extends StatelessWidget {
  const Flipp({super.key, required this.flippStateProvider});
  final FlippStateProvider flippStateProvider;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    late final profileProvider = ProfileProvider();
    late final translationProvider = TranslationProvider();
    late final flippRouter = FlippRouter(
      flippStateProvider,
      profileProvider,
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return translationProvider;
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return profileProvider;
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return flippStateProvider;
          },
        ),
      ],
      child:
          Consumer<ProfileProvider>(builder: (context, profileProvider, child) {
        final router = flippRouter.router;
        ThemeData theme =
            profileProvider.darkMode ? DarkTheme.theme() : LightTheme.theme();
        return MaterialApp.router(
          title: 'Flipp',
          theme: theme,
          debugShowCheckedModeBanner: false,
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
        );
      }),
    );
  }
}
