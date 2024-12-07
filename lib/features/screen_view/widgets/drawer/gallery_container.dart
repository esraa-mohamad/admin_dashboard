import 'package:admin_dashboard/core/helper/app_icons.dart';
import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class GalleryContainer extends StatelessWidget {
  const GalleryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 85,
        vertical: 15,
      ),
      color: AppColor.silverGrey,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Center(
          child: SvgPicture.asset(AppIcons.gallery , width: 24 , height: 24,),
        ),
      ),
    );
  }
}
