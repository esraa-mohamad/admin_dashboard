import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helper/app_icons.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';

class HeaderAllExpenses extends StatelessWidget {
  const HeaderAllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppTextStyles.font20AteneoBlueSemiBold(context),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: AppColor.antiFlashWhite
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
