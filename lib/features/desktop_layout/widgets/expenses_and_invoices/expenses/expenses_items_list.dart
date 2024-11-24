import 'package:admin_dashboard/core/helper/app_icons.dart';
import 'package:admin_dashboard/core/models/expenses_item_model.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/expenses_and_invoices/expenses/expenses_item.dart';
import 'package:flutter/material.dart';

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
      children: items.map((e){
        int index = items.indexOf(e);
        return Expanded(
          child: GestureDetector(
            onTap: (){
              if(active != index){
                setState(() {
                  active = index;
                });
              }
            },
            child: Padding(
              padding:  EdgeInsets.only(
                  right: index == items.length-1 ? 0 : 12
              ),
              child: ExpensesItem(
                expensesItemModel: items[index],
                isActive: active == index,
              ),
            ),
          ),
        );
      }).toList()
    );
  }
}
