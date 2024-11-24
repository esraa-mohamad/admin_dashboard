import 'package:flutter/material.dart';

import 'expenses_items_list.dart';
import 'header_all_expenses.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        children: [
          HeaderAllExpenses(),
          SizedBox(
            height: 16,
          ),
          ExpensesItemsList(),
        ],
      ),
    );
  }
}
