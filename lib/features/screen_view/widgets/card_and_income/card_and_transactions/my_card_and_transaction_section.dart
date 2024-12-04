import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/features/screen_view/widgets/card_and_income/card_and_transactions/transaction_section.dart';
import 'package:flutter/material.dart';

import 'my_card_section.dart';

class MyCardDataAndTransactionSection extends StatelessWidget {
  const MyCardDataAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            thickness: 1,
            color: AppColor.antiFlashWhite,
          ),
          TransactionSection(),
        ],
      ),
    );
  }
}
