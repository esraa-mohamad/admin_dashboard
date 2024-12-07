import 'package:flutter/material.dart';

import 'expenses/all_expenses.dart';
import 'invoices/quick_invoices.dart';

class CustomExpensesAndInvoices extends StatelessWidget {
  const CustomExpensesAndInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoices(),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
