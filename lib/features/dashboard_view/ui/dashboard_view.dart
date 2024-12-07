import 'package:admin_dashboard/core/helper/app_size_helper.dart';
import 'package:admin_dashboard/core/theme/app_color.dart';
import 'package:admin_dashboard/features/screen_view/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_body.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColor.ghostWhite,
      appBar: MediaQuery.sizeOf(context).width < AppSizeHelper.tablet ? AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu ,
            color: AppColor.mainPictonBlue,
            size: 40,
          ),
        ),
      ) : null,
      drawer: MediaQuery.sizeOf(context).width < AppSizeHelper.tablet ? CustomDrawer() : null,
      body: DashboardBody(),
    );
  }
}
