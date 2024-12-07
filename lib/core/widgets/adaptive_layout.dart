import 'package:admin_dashboard/core/helper/app_size_helper.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.mobileLayout, required this.tabletLayout, required this.desktopLayout});
final WidgetBuilder mobileLayout , tabletLayout , desktopLayout ;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context , constraints){
      if(constraints.maxWidth < AppSizeHelper.tablet){
        return mobileLayout(context);
      }else if(constraints.maxWidth < AppSizeHelper.desktop){
        return tabletLayout(context);
      }else {
        return desktopLayout(context);
      }
    },);
  }
}
