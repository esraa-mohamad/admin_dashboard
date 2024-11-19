import 'package:admin_dashboard/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AppRouting {
  Route? omGenerateRouting(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.dashboardView:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
        );
    }
  }
}
