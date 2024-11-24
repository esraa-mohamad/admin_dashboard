import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/core/theme/font_family_helper.dart';
import 'package:admin_dashboard/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle templateStyle({
    required BuildContext context,
    required FontWeight fontWeight,
    required Color color,
    required double fontSize,
  }) {
    return TextStyle(
        fontFamily: FontFamilyHelper.montserratFont,
        fontWeight: fontWeight,
        color: color,
        fontSize: getResponsiveFontSize(context, baseFontSize: fontSize));
  }

  static TextStyle font16AteneoBlueSemiBold(BuildContext context){
    return templateStyle(
      context: context ,
      fontWeight: FontWeightHelper.semiBold ,
      fontSize: 16 ,
      color: AppColor.ateneoBlue
    );
  }
  static TextStyle font12DarkGrayRegular(BuildContext context){
    return templateStyle(
      context: context ,
      fontWeight: FontWeightHelper.regular ,
      fontSize: 12 ,
      color: AppColor.darkGray
    );
  }
  static TextStyle font17MainBlueBold(BuildContext context){
    return templateStyle(
      context: context ,
      fontWeight: FontWeightHelper.bold ,
      fontSize: 17 ,
      color: AppColor.mainPictonBlue
    );
  }
  static TextStyle font16AteneoBlueRegular(BuildContext context){
    return templateStyle(
      context: context ,
      fontWeight: FontWeightHelper.regular ,
      fontSize: 16 ,
      color: AppColor.ateneoBlue
    );
  }
  static TextStyle font20AteneoBlueSemiBold(BuildContext context){
    return templateStyle(
      context: context ,
      fontWeight: FontWeightHelper.semiBold ,
      fontSize: 20 ,
      color: AppColor.ateneoBlue
    );
  }
  static TextStyle font16AteneoBlueMedium(BuildContext context){
    return templateStyle(
      context: context ,
      fontWeight: FontWeightHelper.medium ,
      fontSize: 16 ,
      color: AppColor.ateneoBlue
    );
  }
  static TextStyle font16WhiteSemiBold(BuildContext context){
    return templateStyle(
      context: context ,
      fontWeight: FontWeightHelper.medium ,
      fontSize: 16 ,
      color: Colors.white
    );
  }
  static TextStyle font14DarkGrayRegular(BuildContext context){
    return templateStyle(
      context: context ,
      fontWeight: FontWeightHelper.regular ,
      fontSize: 14 ,
      color: AppColor.darkGray
    );
  }
  static TextStyle font14LotionRegular(BuildContext context){
    return templateStyle(
      context: context ,
      fontWeight: FontWeightHelper.regular ,
      fontSize: 14 ,
      color: AppColor.lotion
    );
  }
  static TextStyle font24WhiteSemiBold(BuildContext context){
    return templateStyle(
      context: context ,
      fontWeight: FontWeightHelper.semiBold ,
      fontSize: 24 ,
      color: Colors.white
    );
  }
  static TextStyle font24MainBlueSemiBold(BuildContext context){
    return templateStyle(
        context: context ,
        fontWeight: FontWeightHelper.semiBold ,
        fontSize: 24 ,
        color: AppColor.mainPictonBlue
    );
  }

  static TextStyle font16DarkGrayRegular(BuildContext context){
    return templateStyle(
        context: context ,
        fontWeight: FontWeightHelper.regular ,
        fontSize: 16 ,
        color: AppColor.darkGray
    );
  }
  static TextStyle font18MainBlueSemiBold(BuildContext context){
    return templateStyle(
        context: context ,
        fontWeight: FontWeightHelper.semiBold ,
        fontSize: 18 ,
        color: AppColor.mainPictonBlue
    );
  }
  static TextStyle font16WhiteRegular(BuildContext context){
    return templateStyle(
        context: context ,
        fontWeight: FontWeightHelper.regular ,
        fontSize: 16 ,
        color: Colors.white
    );
  }
  static TextStyle font20WhiteMedium(BuildContext context){
    return templateStyle(
        context: context ,
        fontWeight: FontWeightHelper.medium ,
        fontSize: 20 ,
        color: Colors.white
    );
  }
  static TextStyle font16MainBlueMedium(BuildContext context){
    return templateStyle(
        context: context ,
        fontWeight: FontWeightHelper.medium ,
        fontSize: 16 ,
        color: AppColor.mainPictonBlue
    );
  }
  static TextStyle font16DarkGrayMedium(BuildContext context){
    return templateStyle(
        context: context ,
        fontWeight: FontWeightHelper.medium ,
        fontSize: 16 ,
        color: AppColor.darkGray
    );
  }
  static TextStyle font16MainBlueBold(BuildContext context){
    return templateStyle(
        context: context ,
        fontWeight: FontWeightHelper.bold ,
        fontSize: 16 ,
        color: AppColor.mainPictonBlue
    );
  }
  static TextStyle font18WhiteSemiBold(BuildContext context){
    return templateStyle(
        context: context ,
        fontWeight: FontWeightHelper.semiBold ,
        fontSize: 18 ,
        color: Colors.white
    );
  }
}

double getResponsiveFontSize(BuildContext context,
    {required double baseFontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseFontSize * scaleFactor;
  double lowerFontSize = baseFontSize * 0.8;
  double upperFontSize = baseFontSize * 1.2;
  return responsiveFontSize.clamp(lowerFontSize, upperFontSize);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
