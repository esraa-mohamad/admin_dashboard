import 'package:admin_dashboard/core/models/user_info_model.dart';
import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.lotion,
      ),
      child: Row(
        children: [
          Image.asset(
            userInfoModel.imagePth,
            width: 32,
            height: 32,
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                userInfoModel.title,
                style: AppTextStyles.font16AteneoBlueSemiBold(context),
              ),
              Text(
                userInfoModel.subTitle,
                style: AppTextStyles.font14DarkGrayRegular(context),
              ),
            ],
          ),
        ],
      ),
      // child: ListTile(
      //   leading: Image.asset(
      //     AppImages.frame,
      //     width: 32,
      //     height: 32,
      //   ),
      //   title: Text('Esraa Mohamed' , style: AppTextStyles.font16AteneoBlueSemiBold(context),),
      //   subtitle: Text('yasoo@gmail.com' , style: AppTextStyles.font14DarkGrayRegular(context),),
      // ),
    );
  }
}
