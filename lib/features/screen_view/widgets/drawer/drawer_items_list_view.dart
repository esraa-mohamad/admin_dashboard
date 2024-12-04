import 'package:admin_dashboard/core/helper/app_icons.dart';
import 'package:admin_dashboard/core/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(
      image: AppIcons.dashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: AppIcons.transaction,
      title: 'My Transaction',
    ),
    DrawerItemModel(
      image: AppIcons.statistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: AppIcons.wallet,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: AppIcons.dashboard,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: AppIcons.investments,
      title: 'My Investments',
    ),
  ];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            if(selectedItem != index){
              setState(() {
                selectedItem = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: selectedItem == index,
            ),
          ),
        );
      },
    );
  }
}
