import 'package:admin_dashboard/core/routes/app_routing.dart';
import 'package:flutter/material.dart';

import 'core/routes/app_routes.dart';

class AdminDashboardApp extends StatelessWidget {
  const AdminDashboardApp({super.key, required this.appRouting});
final AppRouting appRouting;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false ,
      initialRoute: AppRoutes.dashboardView,
      onGenerateRoute: appRouting.omGenerateRouting,
    );
  }
}
