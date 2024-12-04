import 'package:admin_dashboard/core/widgets/custom_mobile_layout.dart';

import '../../screen_view/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: CustomMobileLayout(),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
