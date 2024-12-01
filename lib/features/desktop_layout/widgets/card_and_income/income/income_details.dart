import 'package:admin_dashboard/core/models/income_details_item_model.dart';
import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/card_and_income/income/income_details_item.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static List<IncomeDetailsItemModel> incomeItems = [
    IncomeDetailsItemModel(
      indicatorColor: AppColor.cyanCornflowerBlue,
      title: 'Design service',
      percentage: '40',
    ),
    IncomeDetailsItemModel(
      indicatorColor: AppColor.mainPictonBlue,
      title: 'Design product',
      percentage: '25',
    ),
    IncomeDetailsItemModel(
      indicatorColor: AppColor.ateneoBlue,
      title: 'Product royalty',
      percentage: '20',
    ),
    IncomeDetailsItemModel(
      indicatorColor: AppColor.cyanCornflowerBlue,
      title: 'Other',
      percentage: '22',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(incomeItems.length, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom:  12),
          child: IncomeDetailsItem(
            incomeDetailsItemModel: incomeItems[index],
          ),
        );
      }),
    );
  }
}
