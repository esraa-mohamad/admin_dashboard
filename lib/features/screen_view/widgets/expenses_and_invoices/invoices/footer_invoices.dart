import 'dart:developer';

import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:admin_dashboard/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FooterInvoices extends StatelessWidget {
  const FooterInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width <= 480 ?
    Column(
      children: [
        Text(
          'Add more details',
          style: AppTextStyles.font18MainBlueSemiBold(context),
        ),
        SizedBox(
          height: 24,
        ),
        CustomElevatedButton(
          onPressed: () {},
          textButton: 'SendMoney',
        ),
      ],
    )
         :
    Row(
      children: [
        Expanded(
          child: Text(
            'Add more details',
            style: AppTextStyles.font18MainBlueSemiBold(context),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: CustomElevatedButton(
            onPressed: () {},
            textButton: 'SendMoney',
          ),
        ),
      ],
    );
  }
}
