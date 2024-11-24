import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:flutter/material.dart';

import 'expenses/all_expenses.dart';
import 'invoices/quick_invoices.dart';

class CustomExpensesAndInvoices extends StatelessWidget {
  const CustomExpensesAndInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.ghostWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
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
      ),
    );
  }
}
