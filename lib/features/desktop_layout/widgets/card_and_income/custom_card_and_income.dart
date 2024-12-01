import 'package:admin_dashboard/features/desktop_layout/widgets/card_and_income/income/income_section.dart';
import 'package:flutter/material.dart';

import 'card_and_transactions/my_card_and_transaction_section.dart';

class CustomCardAndIncome extends StatelessWidget {
  const CustomCardAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: MyCardDataAndTransactionSection(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Expanded(
              child: IncomeSection(),
            ),
          ),
        ],
      ),
    );
  }
}
