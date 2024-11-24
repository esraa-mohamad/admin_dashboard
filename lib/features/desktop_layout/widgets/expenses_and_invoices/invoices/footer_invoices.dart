import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:admin_dashboard/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FooterInvoices extends StatelessWidget {
  const FooterInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Add more details',
          style: AppTextStyles.font18MainBlueSemiBold(context),
        ),
        CustomElevatedButton(
          onPressed: () {},
          textButton: 'SendMoney',
        ),
      ],
    );
  }
}
