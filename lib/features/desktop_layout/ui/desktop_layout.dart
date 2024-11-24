import 'package:admin_dashboard/features/desktop_layout/widgets/drawer/custom_drawer.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/expenses_and_invoices/custom_expenses_and_invoices.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: CustomExpensesAndInvoices(),
        ),
      ],
    );
  }
}
