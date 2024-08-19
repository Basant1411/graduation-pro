import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/presentation/Screens/change_pass.dart';
import 'package:graduation2_project/presentation/Screens/edit_pro.dart';
import 'package:graduation2_project/presentation/Screens/login_screen.dart';
import 'package:graduation2_project/presentation/Screens/setting.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.main_color,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("profile"),
      ),
      body: Column( children: [
       Center(child: Container(
         child: Column(children: [  CircleAvatar(maxRadius:40,backgroundImage: AssetImage("lib/assets/images/pp2.jpg"),) ,
           SizedBox(height: 12,),
           Text("Melissa Peters"),
         ],),
       )),
        SizedBox(height: 50,),

        Row(children: [
          SizedBox(width: 10,),
          Icon(Icons.person_outline),
          SizedBox(width: 3,),
          Text("Edit Profile"),
          Spacer(flex: 1,),
          IconButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder:(build){return EditProf();}));}, icon: Icon(Icons.navigate_next))

        ],),Row(children: [
          SizedBox(width: 10,),
          Icon(Icons.lock_outline_sharp),
          SizedBox(width: 3,),
          Text("Change Password"),
          Spacer(flex: 1,),
          IconButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder:(build){return ChangePass();}));}, icon: Icon(Icons.navigate_next))

        ],),
        Row(children: [
          SizedBox(width: 10,),
          Icon(Icons.settings_outlined),
          SizedBox(width: 3,),
          Text("Setting"),
          Spacer(flex: 1,),
          IconButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder:(build){return SettingScreen();}));}, icon: Icon(Icons.navigate_next))

        ],),
        SizedBox(height:10,),
        GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder:(build){return LoginScreen();}));},
          child: Row(children: [
            SizedBox(width: 10,),
            Icon(Icons.logout,color: Colors.red),
            SizedBox(width: 3,),
            Text("log out",style:TextStyle(color: Colors.red)),

          ],),
        ),


      ]),
    );
  }
}
