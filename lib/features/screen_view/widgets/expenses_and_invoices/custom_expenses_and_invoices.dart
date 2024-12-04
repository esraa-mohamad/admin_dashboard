import 'package:flutter/material.dart';

import 'expenses/all_expenses.dart';
import 'invoices/quick_invoices.dart';

class CustomExpensesAndInvoices extends StatelessWidget {
  const CustomExpensesAndInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
       vertical: 40
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExpenses(),
            SizedBox(
              height: 24,
            ),
            QuickInvoices(),
          ],
        ),
      ),
    );
  }
}
