import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/presentation/Screens/HomeScreen.dart';
import 'package:graduation2_project/presentation/Screens/Notification_Screen.dart';
import 'package:graduation2_project/presentation/Screens/camera.dart';
import 'package:graduation2_project/presentation/Screens/history.dart';
import 'package:graduation2_project/presentation/Screens/profile.dart';
class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List Screens=[HomeScreen(),LoadingScreen(),Camera(),History(),Profile()];
  int _selected_index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index:_selected_index,
        items: <Widget>[

          Icon(Icons.home_outlined, size: 30,color:AppColor.main_color),
          Icon(Icons.notifications, size: 30,color:AppColor.main_color),
          Icon(Icons.camera, size: 30,color:AppColor.main_color),
          Icon(Icons.history, size: 30,color:AppColor.main_color),
          Icon(Icons.person, size: 30,color:AppColor.main_color),
        ],

        animationCurve: Curves.easeInOut,
        backgroundColor: Colors.transparent,
        animationDuration: Duration(milliseconds: 600),

        onTap: (index) {
          setState(() {
            _selected_index=index;
          });
        },
        letIndexChange: (index) => true,
        buttonBackgroundColor: AppColor.button_color,
        color: AppColor.button_color,

      ),
      body: Screens[
      _selected_index
      ],
    );
  }
}