import 'package:flutter/material.dart';

import '../common/app_colors.dart';
import '../common/app_responsive.dart';
import 'dashboard/dashboard.dart';
import 'widget/side_bar_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      // key: Provider.of<MenuController>(context, listen: false).scaffoldKey,
      backgroundColor: AppColor.bgSideMenu,
      body: SafeArea(
        child: Dashboard(),
      ),
    );
  }
}
