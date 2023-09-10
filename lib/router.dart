import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'src/screens/screens.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreen.routeName:
      return PageTransition(
        settings: routeSettings,
        child: const HomeScreen(),
        type: PageTransitionType.rotate,
        duration: const Duration(seconds: 1),
        alignment: Alignment.bottomCenter,
      );
    case LoginScreen.routeName:
      return PageTransition(
        settings: routeSettings,
        child: const LoginScreen(),
        type: PageTransitionType.rotate,
        duration: const Duration(seconds: 1),
        alignment: Alignment.bottomCenter,
      );

    case SettingsScreen.routeName:
      return PageTransition(
        settings: routeSettings,
        child: const SettingsScreen(),
        type: PageTransitionType.rotate,
        duration: const Duration(seconds: 1),
        alignment: Alignment.bottomCenter,
      );
    case ChangePasswordScreen.routeName:
      return PageTransition(
        settings: routeSettings,
        child: const ChangePasswordScreen(),
        type: PageTransitionType.rotate,
        duration: const Duration(seconds: 1),
        alignment: Alignment.bottomCenter,
      );
    case ProfileScreen.routeName:
      return PageTransition(
        settings: routeSettings,
        child: const ProfileScreen(),
        type: PageTransitionType.rotate,
        duration: const Duration(seconds: 1),
        alignment: Alignment.bottomCenter,
      );
    case StorageDetailsScreen.routeName:
      return PageTransition(
        settings: routeSettings,
        child: const StorageDetailsScreen(),
        type: PageTransitionType.rotate,
        duration: const Duration(seconds: 1),
        alignment: Alignment.bottomCenter,
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen no dey 😒'),
          ),
        ),
      );
  }
}
