import 'package:admin_dashboard/core/models/transaction_text_field_model.dart';
import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:admin_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TransactionTextFieldItem extends StatelessWidget {
  const TransactionTextFieldItem({super.key, required this.transactionTextFieldModel});

  final TransactionTextFieldModel transactionTextFieldModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(transactionTextFieldModel.label, style: AppTextStyles.font16AteneoBlueMedium(context),),
        SizedBox(
          height: 12,
        ),
        CustomTextFormField(hintText: transactionTextFieldModel.hint),
      ],
    );
  }
}
