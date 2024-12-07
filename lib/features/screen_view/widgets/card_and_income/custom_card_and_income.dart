import 'package:flutter/material.dart';

import 'card_and_transactions/my_card_and_transaction_section.dart';
import 'income/income_section.dart';

class CustomCardAndIncome extends StatelessWidget {
  const CustomCardAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCardDataAndTransactionSection(),
        SizedBox(
          height: 24,
        ),
        IncomeSection(),
      ],
    );
  }
}
