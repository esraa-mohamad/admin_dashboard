import 'package:flutter/material.dart';

import '../../features/screen_view/widgets/card_and_income/custom_card_and_income.dart';
import '../../features/screen_view/widgets/expenses_and_invoices/custom_expenses_and_invoices.dart';

class CustomMobileLayout extends StatelessWidget {
  const CustomMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomExpensesAndInvoices(),
          CustomCardAndIncome(),
        ],
      ),
    );
  }
}
