import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/view/screens/home/home_page.dart';
import 'package:docdoc/view/screens/login/login.dart';
import 'package:docdoc/view/screens/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const Login(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) =>  HomePage(),
        );

      default:
        return null;
    }
  }
}
