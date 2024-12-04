import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_body.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.ghostWhite,
      body: DashboardBody(),
    );
  }
}
