import 'package:admin_dashboard/core/helper/app_icons.dart';
import 'package:admin_dashboard/core/helper/app_images.dart';
import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.mainPictonBlue,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.cardBackground),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 31,
                right: 41,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name Card',
                        style: AppTextStyles.font16WhiteRegular(context),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Syah Bandi',
                        style: AppTextStyles.font20WhiteMedium(context),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    AppIcons.gallery,
                    width: 24,
                    height: 24,
                  )
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(
                right: 24 ,
              ),
              child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0918 8124 0042 8129',
                      style: AppTextStyles.font24WhiteSemiBold(context),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '12/20 - 124',
                      style: AppTextStyles.font16WhiteRegular(context),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
