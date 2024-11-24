import 'package:admin_dashboard/core/models/transaction_text_field_model.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/expenses_and_invoices/invoices/footer_invoices.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/expenses_and_invoices/invoices/transaction_text_field_item.dart';
import 'package:flutter/cupertino.dart';

class QuickInvoicesForm extends StatelessWidget {
  QuickInvoicesForm({super.key});

  final List<TransactionTextFieldModel> transactionTextFieldModel = [
    TransactionTextFieldModel(
      label: 'Customer name',
      hint: 'Type customer name',
    ),
    TransactionTextFieldModel(
      label: 'Customer Email',
      hint: 'Type customer email',
    ),
    TransactionTextFieldModel(
      label: 'Item name',
      hint: 'Type customer name',
    ),
    TransactionTextFieldModel(
      label: 'Item mount',
      hint: 'USD',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TransactionTextFieldItem(
              transactionTextFieldModel: TransactionTextFieldModel(
                label: 'Customer name',
                hint: 'Type customer name',
              ),
            )),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: TransactionTextFieldItem(
                transactionTextFieldModel: TransactionTextFieldModel(
                  label: 'Customer Email',
                  hint: 'Type customer email',
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TransactionTextFieldItem(
              transactionTextFieldModel: TransactionTextFieldModel(
                label: 'Item name',
                hint: 'Type customer name',
              ),
            )),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: TransactionTextFieldItem(
                transactionTextFieldModel: TransactionTextFieldModel(
                  label: 'Item mount',
                  hint: 'USD',
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        FooterInvoices(),
      ],
    );
  }
}
