import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, required this.currentIndex});

  final int currentIndex ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding:  EdgeInsets.only(
            right: 8
          ),
          child: dotsIndicator(isActive: index ==currentIndex),
        );
      },),
    );
  }

  Widget dotsIndicator({required bool isActive}){
    return AnimatedContainer(
      width:isActive? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
        color: isActive ? AppColor.mainPictonBlue : AppColor.platinum,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ), duration: Duration(milliseconds: 300),
    );
  }
}
