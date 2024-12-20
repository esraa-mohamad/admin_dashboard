import 'package:admin_dashboard/core/widgets/adaptive_layout.dart';
import 'package:admin_dashboard/features/desktop_layout/ui/desktop_layout.dart';
import 'package:admin_dashboard/features/mobile_layout/ui/mobile_layout.dart';
import 'package:admin_dashboard/features/tablet_layout/ui/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
    );
  }
}
