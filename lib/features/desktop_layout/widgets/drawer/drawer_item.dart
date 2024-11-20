import 'package:admin_dashboard/core/models/drawer_item_model.dart';
import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel,required this.isActive,});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image ,
      ),
      title: Text(
        drawerItemModel.title ,
        style: isActive  ? AppTextStyles.font16MainBlueBold(context)
            : AppTextStyles.font16AteneoBlueRegular(context),
      ),
      trailing: Container(
        width: 3.27,
        color:isActive ? AppColor.mainPictonBlue : Colors.white,
      ),
    );
  }
}
