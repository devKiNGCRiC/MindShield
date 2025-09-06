import 'package:flutter/material.dart';

class AppRoutes {
  static const String welcome = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String focusSession = '/focus-session';
  static const String analytics = '/analytics';
  static const String settings = '/settings';
  static const String about = '/about';
}

class AppNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  
  static Future<void> pushNamed(String routeName, {Object? arguments}) async {
    await navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }
  
  static Future<void> pushReplacementNamed(String routeName, {Object? arguments}) async {
    await navigatorKey.currentState?.pushReplacementNamed(routeName, arguments: arguments);
  }
  
  static Future<void> pushNamedAndRemoveUntil(String routeName, {Object? arguments}) async {
    await navigatorKey.currentState?.pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }
  
  static void pop([Object? result]) {
    navigatorKey.currentState?.pop(result);
  }
  
  static void popUntil(String routeName) {
    navigatorKey.currentState?.popUntil(ModalRoute.withName(routeName));
  }
}

// Navigation Items for Bottom Navigation
enum NavigationTab {
  home('Home', Icons.home),
  focus('Focus', Icons.center_focus_strong),
  analytics('Analytics', Icons.analytics),
  profile('Profile', Icons.person);

  const NavigationTab(this.label, this.icon);
  final String label;
  final IconData icon;
}
