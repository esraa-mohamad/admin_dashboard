import 'package:admin_dashboard/core/models/income_details_item_model.dart';
import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsItemModel,});


  final IncomeDetailsItemModel incomeDetailsItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: incomeDetailsItemModel.indicatorColor
        ),
      ),
      title: Text(
        incomeDetailsItemModel.title,
        style: AppTextStyles.font16AteneoBlueRegular(context),
      ),
      trailing: Text(
        '${incomeDetailsItemModel.percentage}%',
        style: AppTextStyles.font16CyanBlueMedium(context),
      ),
    );
  }
}
