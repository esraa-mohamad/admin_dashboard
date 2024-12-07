
import 'package:flutter/material.dart';

import '../../screen_view/widgets/card_and_income/card_and_transactions/my_card_and_transaction_section.dart';
import '../../screen_view/widgets/card_and_income/income/income_section.dart';
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
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: CustomExpensesAndInvoices(),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          children: [
                            MyCardDataAndTransactionSection(),
                            SizedBox(
                              height: 24,
                            ),
                            Expanded(child: IncomeSection()),
                          ],
                        ),
                      ),),
                  ],
                ),
              )
            ],
          )
        ),
      ],
    );
  }
}
