

import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.paddingButton, required this.onPressed, required this.textButton, this.styleTextButton});

  final EdgeInsetsGeometry? paddingButton;
  final void Function() onPressed;
  final String textButton ;
  final TextStyle? styleTextButton;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: paddingButton ??EdgeInsets.symmetric(
              horizontal: 75.5 ,
              vertical: 20
          ),
          backgroundColor: AppColor.mainPictonBlue
      ),
      onPressed: onPressed,
      child: Text(
        textButton ,
        style:styleTextButton?? AppTextStyles.font18WhiteSemiBold(context)
      ),
    );
  }
}
