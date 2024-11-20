import 'package:admin_dashboard/core/widgets/adaptive_layout.dart';
import 'package:admin_dashboard/features/desktop_layout/ui/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopLayout(),
    );
  }
}
