import 'package:admin_dashboard/core/widgets/custom_mobile_layout.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32
      ),
      child: CustomMobileLayout(),
    );
  }
}
