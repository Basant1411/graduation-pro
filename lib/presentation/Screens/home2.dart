import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/presentation/Screens/camera.dart';
import 'package:graduation2_project/presentation/Screens/profile.dart';
import 'package:graduation2_project/presentation/Screens/setting.dart';
class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:10,right: 12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(60),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                Image.asset("lib/assets/images/4.png"),
                Text("Home",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 10),
              child: Row(children: [
                InkWell(
onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context){return SettingScreen();}));},
                  child: Container(width: 150,height:150,decoration: BoxDecoration(shape: BoxShape.circle,color:AppColor.button_color),child: Image.asset("lib/assets/images/3.png",width:100,height:70,),),),
                SizedBox(width: 20,),
                GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context){return Profile();}));},child: Container(width: 150,height:150,decoration: BoxDecoration(shape: BoxShape.circle,color:AppColor.button_color),child: Icon(Icons.person,size: 100,color: Colors.white,),))
              ],),
            ),
            GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context){return Camera();}));},child: Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: Container(height:200,width: 300,padding: EdgeInsets.all(50),child:  Icon(Icons.photo_camera_outlined,color: Colors.white,size: 130),decoration: BoxDecoration(color:AppColor.button_color,shape:BoxShape.rectangle,borderRadius: BorderRadius.circular(35)),),
            )),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: [
                Container(width: 150,height:150,decoration: BoxDecoration(shape: BoxShape.circle,color:AppColor.button_color),child: Image.asset("lib/assets/images/5.png"),),
                SizedBox(width: 20,),
                Container(width: 150,height:150,decoration: BoxDecoration(shape: BoxShape.circle,color:AppColor.button_color),child: Icon(Icons.history,size:100,color: Colors.white,),)
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
