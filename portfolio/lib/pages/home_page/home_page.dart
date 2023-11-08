import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page/body_mobile_tablet.dart';
import 'package:portfolio/pages/home_page/body_web.dart';
import 'package:portfolio/utils/breakpoints.dart';
import 'package:portfolio/widgets/app_bar/app_bar_mobile.dart';
import 'package:portfolio/widgets/app_bar/app_bar_web.dart';
import 'package:portfolio/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 0, 34, 68),
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: AppBarMobile(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 72),
                  child: AppBarWeb(),
                ),
          endDrawer: constraints.maxWidth <= mobileBreakpoint 
          ? const DrawerWidget()
          : null,
          body: constraints.maxWidth > tabletBreakpoint
              ? const BodyWeb()
              : const BodyMobileTablet(),
        );  
      },  
    );  
  }  
}  
