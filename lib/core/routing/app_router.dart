import 'package:flutter/material.dart';
import 'package:workout_pal/core/routing/routes.dart';
import 'package:workout_pal/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
    }
  }
}
