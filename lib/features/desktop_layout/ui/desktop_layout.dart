
import 'package:flutter/material.dart';

import '../../screen_view/widgets/card_and_income/custom_card_and_income.dart';
import '../../screen_view/widgets/drawer/custom_drawer.dart';
import '../../screen_view/widgets/expenses_and_invoices/custom_expenses_and_invoices.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomExpensesAndInvoices(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 2,
            child: CustomCardAndIncome()),
      ],
    );
  }
}
