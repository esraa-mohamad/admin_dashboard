import 'package:admin_dashboard/admin_dashboard_app.dart';
import 'package:admin_dashboard/core/routes/app_routing.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (BuildContext context)=>AdminDashboardApp(
        appRouting: AppRouting(),
      ),
    ),
  );
}
