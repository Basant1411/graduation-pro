import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/presentation/Screens/HomeScreen.dart';
import 'package:graduation2_project/presentation/Screens/Notification.dart';
import 'package:graduation2_project/presentation/Screens/access_camera.dart';
import 'package:graduation2_project/presentation/Screens/history.dart';
import 'package:graduation2_project/presentation/Screens/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Widget? _child;

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = HomeScreen();
          break;
        case 1:
          _child = NotificationScreen();
          break;
        case 2:
          _child = Camera();
          break;
        case 3:
          _child = History();
          break;
        case 4:
          _child = Profile();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.ease,
        duration: Duration(microseconds: 1),

        child: _child,
      );
    });
  }

  @override
  void initState() {
    _child = HomeScreen();
    super.initState();
  }
    Widget build(BuildContext context) {
      return Scaffold(bottomNavigationBar: FluidNavBar(animationFactor:10,
        icons: [
          FluidNavBarIcon(
              svgPath: "lib/assets/images/home.svg",
              extras: {"label": "home"}),
          FluidNavBarIcon(
              icon: Icons.notifications,
              extras: {"label": "Notification"}),
          FluidNavBarIcon(
              svgPath: "lib/assets/images/Camera.svg",
              extras: {"label": "Camera"}),
          FluidNavBarIcon(
              icon: Icons.history,
              extras:{"label": "history"}),
          FluidNavBarIcon(
              icon: Icons.person,
              extras: {"label": "person"}),
        ],
        onChange: _handleNavigationChange,
        style: FluidNavBarStyle(barBackgroundColor:AppColor.button_color,
            iconUnselectedForegroundColor: AppColor.main_color,iconSelectedForegroundColor: AppColor.main_color),

        scaleFactor: 2,
        defaultIndex: 0,
        itemBuilder: (icon, item) =>
            Semantics(
              label: icon.extras!["label"],
              child: item,
            ),
      ),
        body: _child,
      );
    }
  }

