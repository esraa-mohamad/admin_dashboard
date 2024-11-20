import 'package:admin_dashboard/core/helper/app_icons.dart';
import 'package:admin_dashboard/core/models/drawer_item_model.dart';
import 'package:admin_dashboard/core/models/user_info_model.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/drawer/drawer_item.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/drawer/drawer_items_list_view.dart';
import 'package:admin_dashboard/features/desktop_layout/widgets/drawer/gallery_container.dart';
import 'package:admin_dashboard/core/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: GalleryContainer(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 25,
              ),
            ),
            SliverToBoxAdapter(
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                  imagePth: AppImages.frame,
                  title: 'Esraa Mohamed ',
                  subTitle: 'yasoo@gmail.com',
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            DrawerItemsListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(),
                  ),
                  DrawerItem(
                    drawerItemModel: DrawerItemModel(
                      image: AppIcons.settings,
                      title: 'Settings',
                    ),
                    isActive: false,
                  ),
                  DrawerItem(
                    drawerItemModel: DrawerItemModel(
                      image: AppIcons.logout,
                      title: 'Logout',
                    ),
                    isActive: false,
                  ),
                  SizedBox(
                    height: 48,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
