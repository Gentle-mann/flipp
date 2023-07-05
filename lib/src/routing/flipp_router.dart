import 'package:go_router/go_router.dart';

import '../tabs/screens/screen_barrel.dart';
import '../tabs/tabs.dart';

class FlippRouter {
  FlippRouter._();
  static final router = GoRouter(
    debugLogDiagnostics: true,
    //refreshListenable:
    initialLocation: '/signin',
    routes: [
      GoRoute(
        name: 'signin',
        path: '/signin',
        builder: (context, state) {
          return const SignInScreen();
        },
      ),
      GoRoute(
        name: 'onboarding',
        path: '/onboarding',
        builder: (context, state) {
          return const OnboardingScreen();
        },
      ),
      GoRoute(
        name: 'home',
        path: '/:tab',
        builder: (context, state) {
          final selectedTab =
              int.tryParse(state.pathParameters['tab'] ?? '') ?? 1;

          return HomeScreen(selectedTab: selectedTab);
        },
      ),
    ],
  );
}
