import 'package:admin_dashboard/core/helper/app_images.dart';
import 'package:admin_dashboard/core/models/user_info_model.dart';
import 'package:admin_dashboard/core/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class TransactionUserInfoListView extends StatelessWidget {
  TransactionUserInfoListView({super.key});

  final List<UserInfoModel> userInfoModel = [
    UserInfoModel(
        imagePth: AppImages.invoice1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        imagePth: AppImages.invoice2,
        title: 'Josua Nunito',
        subTitle: 'JoshNunito@gmail.com'),
    UserInfoModel(
        imagePth: AppImages.invoice1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        imagePth: AppImages.invoice2,
        title: 'Josua Nunito',
        subTitle: 'JoshNunito@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoModel.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e),)).toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     itemCount: userInfoModel.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //         padding: const EdgeInsets.only(right: 12),
    //         child: IntrinsicWidth(
    //           child: UserInfoListTile(
    //             userInfoModel: userInfoModel[index],
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
