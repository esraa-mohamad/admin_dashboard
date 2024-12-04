import 'package:admin_dashboard/core/models/user_info_model.dart';
import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
     color: AppColor.lotion,
      child: Center(
        child: ListTile(
          leading: Image.asset(
            userInfoModel.imagePth,
            width: 40,
            height: 40,
          ),
          title: Text(
            userInfoModel.title,
            style: AppTextStyles.font16AteneoBlueSemiBold(context),
          ),
          subtitle: Text(
            userInfoModel.subTitle,
            style: AppTextStyles.font14DarkGrayRegular(context),
          ),
        ),
      ),
    );
  }
}
