import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/expenses_and_invoices/invoices/quick_invoices_form.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/expenses_and_invoices/invoices/header_quick_invoices.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/expenses_and_invoices/invoices/transaction_user_info_list_view.dart';
import 'package:flutter/material.dart';

class QuickInvoices extends StatelessWidget {
  const QuickInvoices({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderQuickInvoices(),
          SizedBox(
            height: 24,
          ),
          Text('Latest Transaction' , style: AppTextStyles.font16AteneoBlueMedium(context),),
          SizedBox(
            height: 12,
          ),
          TransactionUserInfoListView(),
          Divider(
            height: 48,
            thickness: 1,
            color: AppColor.antiFlashWhite,
          ),
          QuickInvoicesForm(),
        ],
      ),
    );
  }
}
