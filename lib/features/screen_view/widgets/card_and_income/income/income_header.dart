import 'package:admin_dashboard/core/helper/app_icons.dart';
import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppTextStyles.font20AteneoBlueSemiBold(context),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColor.antiFlashWhite,
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppTextStyles.font16AteneoBlueMedium(context),
              ),
              SizedBox(
                width: 18,
              ),
              SvgPicture.asset(
                AppIcons.arrowDown,
                width: 24,
                height: 24,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
