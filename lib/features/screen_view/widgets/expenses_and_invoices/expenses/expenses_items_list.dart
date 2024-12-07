import 'package:admin_dashboard/core/helper/app_icons.dart';
import 'package:admin_dashboard/core/models/expenses_item_model.dart';
import 'package:flutter/material.dart';

import 'expenses_item.dart';

class ExpensesItemsList extends StatefulWidget {
  const ExpensesItemsList({super.key});

  @override
  State<ExpensesItemsList> createState() => _ExpensesItemsListState();
}

class _ExpensesItemsListState extends State<ExpensesItemsList> {
  final List<ExpensesItemModel> items = [
    ExpensesItemModel(
      inActiveImage: AppIcons.balanceBlue,
      activeImage: AppIcons.balanceWhite,
      title: 'Balance',
    ),
    ExpensesItemModel(
      inActiveImage: AppIcons.incomeBlue,
      activeImage: AppIcons.incomeWhite,
      title: 'Income',
    ),
    ExpensesItemModel(
      inActiveImage: AppIcons.expensesBlue,
      activeImage: AppIcons.expensesWhite,
      title: 'Expenses',
    ),
  ];
  int active = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            if (active != 0) {
              setState(() {
                active = 0;
              });
            }
          },
          child: ExpensesItem(
            expensesItemModel: items[0],
            isActive: active == 0,
          ),
        ),
      ),
        SizedBox(
          width: 12,
        ),
        Expanded(
        child: GestureDetector(
          onTap: () {
            if (active != 1) {
              setState(() {
                active = 1;
              });
            }
          },
          child: ExpensesItem(
            expensesItemModel: items[1],
            isActive: active == 1,
          ),
        ),
      ),
        SizedBox(
          width: 12,
        ),
        Expanded(
        child: GestureDetector(
          onTap: () {
            if (active != 2) {
              setState(() {
                active = 2;
              });
            }
          },
          child: ExpensesItem(
            expensesItemModel: items[2],
            isActive: active == 2,
          ),
        ),
      ),
    ],
    );
  }
}
