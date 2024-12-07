import 'package:admin_dashboard/core/routes/app_routing.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/routes/app_routes.dart';

class AdminDashboardApp extends StatelessWidget {
  const AdminDashboardApp({super.key, required this.appRouting});
final AppRouting appRouting;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false ,
      initialRoute: AppRoutes.dashboardView,
      onGenerateRoute: appRouting.omGenerateRouting,
    );
  }
}
