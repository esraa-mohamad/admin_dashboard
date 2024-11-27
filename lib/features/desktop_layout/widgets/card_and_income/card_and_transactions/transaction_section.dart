import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/card_and_income/card_and_transactions/transaction_items_list.dart';
import 'package:flutter/cupertino.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction',
              style: AppTextStyles.font20AteneoBlueSemiBold(context),
            ),
            Text(
              'See All',
              style: AppTextStyles.font16MainBlueMedium(context),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppTextStyles.font16DarkGrayMedium(context),
        ),
        SizedBox(
          height: 16,
        ),
        TransactionItemsList(),
      ],
    );
  }
}
