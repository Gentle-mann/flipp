import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../provider/providers.dart';
import '../screens/screen_barrel.dart';
import '../screens/home/tabs/tabs.dart';

class FlippRouter {
  final FlippStateProvider flippStateProvider;
  final ProfileProvider profileProvider;
  FlippRouter(this.flippStateProvider, this.profileProvider);

  late final router = GoRouter(
      debugLogDiagnostics: true,
      refreshListenable: flippStateProvider,
      initialLocation: '/signin',
      errorPageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: Scaffold(
            body: Center(
              child: Text(state.error.toString()),
            ),
          ),
        );
      },
      routes: [
        GoRoute(
          name: 'signin',
          path: '/signin',
          builder: (context, state) {
            return const SignInScreen();
          },
        ),
        GoRoute(
          name: 'signup',
          path: '/signup',
          builder: (context, state) {
            return const SignUpScreen();
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

            return HomeScreen(key: state.pageKey, selectedTab: selectedTab);
          },
          routes: [
            GoRoute(
                name: 'profile',
                path: 'profile',
                builder: (context, state) {
                  return ProfileScreen(user: profileProvider.getUser);
                }),
            // GoRoute(
            //     name: 'flipp',
            //     path: '/flipp',
            //     builder: (context, state) {
            //       return const WebViewScreen();
            //     }),
          ],
        ),
      ],
      redirect: (context, state) {
        final isSignedIn = flippStateProvider.isSignedIn;
        final isSigningIn = state.path == '/signin';
        print('isSigningIn: $isSigningIn');
        if (!isSignedIn) {
          return isSigningIn ? null : '/signin';
        }
        final hasOnboarded = flippStateProvider.hasOnboarded;
        final isOnboarding = state.path == '/onboarding';
        print('isOnboarding: $isOnboarding');
        if (!hasOnboarded) {
          return isOnboarding ? null : '/onboarding';
        }
        if (isSigningIn || isOnboarding) {
          return '/0';
        }
        return null;
      });
}
