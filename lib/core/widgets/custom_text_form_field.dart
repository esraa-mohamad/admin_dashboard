import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.hintStyle,
      this.suffixIcon,
      this.prefixIcon,
      this.contentPadding,
      this.fillBackgroundColor,
      this.border,
      this.focusedBorder,
      this.enabledBorder,
      this.errorBorder,
      this.focusedErrorBorder,
      this.obscureText,
      this.controller,
      });

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillBackgroundColor;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final bool? obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle ?? AppTextStyles.font14DarkGrayRegular(context),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        filled: true,
        fillColor: fillBackgroundColor ?? AppColor.lotion,
        border: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
        errorBorder: errorBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.red)),
        focusedErrorBorder: focusedErrorBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.red)),
      ),
    );
  }
}
