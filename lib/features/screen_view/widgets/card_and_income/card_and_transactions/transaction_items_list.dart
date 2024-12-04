import 'package:admin_dashboard/core/models/transaction_item_model.dart';
import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class TransactionItemsList extends StatelessWidget {
  const TransactionItemsList({super.key});

  static List<TransactionItemModel> items = [
    TransactionItemModel(
      title: 'Cash Withdrawal',
      data: '13 Apr, 2022',
      salary: '20,129',
    ),
    TransactionItemModel(
      title: 'Landing Page project',
      data: '13 Apr, 2022 at 3:30 PM',
      salary: '2,000',
    ),
    TransactionItemModel(
      title: 'Juni Mobile App project',
      data: '13 Apr, 2022 at 3:30 PM',
      salary: '20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
        (index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: index == 2 ? 0 : 12,
            ),
            child: transactionItem(
              context,
              transactionItemModel: items[index],
              salaryTextStyle: index == 0
                  ? AppTextStyles.font20RedSemiBold(context)
                  : AppTextStyles.font20GreenSemiBold(context),
            ),
          );
        },
      ),
    );
  }

  Widget transactionItem(BuildContext context,
      {required TransactionItemModel transactionItemModel,
      required TextStyle salaryTextStyle}) {
    return Card.filled(
      color: AppColor.lotion,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        title: Text(
          transactionItemModel.title,
          style: AppTextStyles.font16AteneoBlueSemiBold(context),
        ),
        subtitle: Text(
          transactionItemModel.data,
          style: AppTextStyles.font16DarkGrayRegular(context),
        ),
        trailing:
            Text('\$${transactionItemModel.salary}', style: salaryTextStyle),
      ),
    );
  }
}
