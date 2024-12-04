import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_styles.dart';

class HeaderQuickInvoices extends StatelessWidget {
  const HeaderQuickInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoices',
          style: AppTextStyles.font20AteneoBlueSemiBold(context),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15 ,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle  ,
            color: AppColor.lotion
          ),
          child: Center(
            child: Icon(
              Icons.add ,
              size: 18,
              color: AppColor.mainPictonBlue,
            ),
          ),
        ),
      ],
    );
  }
}
