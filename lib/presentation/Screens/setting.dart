import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/presentation/Screens/profile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool is_switched=true;
  bool is_switched2=true;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(appBar: AppBar(title: Text("Setting")),
    body: Padding(
      padding: const EdgeInsets.only(top: 80,right: 30,left: 30),
      child: Column(children: [
        Row(children: [Icon(Icons.person_outline,),
          SizedBox(width: 5,),
          Text("Melissa Peters",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
        Spacer(flex:1),
         IconButton (icon:Icon(Icons.navigate_next_sharp,size: 30,),onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context){return Profile();}));},)
        ],),
        Row(children: [Icon(Icons.dark_mode),
          SizedBox(width: 5,),
          Text("Dark Mood",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
          Spacer(flex:1),
          Switch(inactiveTrackColor:Colors.grey ,value:is_switched, onChanged:(value){
            setState(() {
              is_switched=value;
            });
          },activeColor: AppColor.main_color,activeTrackColor: AppColor.switch_color,thumbIcon: MaterialStatePropertyAll(Icon(Icons.check)))
        ],),
        Padding(
          padding: const EdgeInsets.only(left:5),
          child: Row(children: [Image.asset("lib/assets/images/person.png"),
            SizedBox(width:7,),
            Text("Delete Account",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
            Spacer(flex:1),
            Icon(Icons.navigate_next_sharp,size: 30,)
          ],),
        ),
        SizedBox(height: 10,),
        Row(children: [Icon(Icons.language),
          SizedBox(width:7,),
          Text("Language",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
          Spacer(flex:1),
          Text("English (Us)",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
          SizedBox(width: 10,),
          Icon(Icons.navigate_next_sharp,size: 30,)
        ],),
        SizedBox(height: 5,),

        Row(children: [Icon(Icons.keyboard_voice),
          SizedBox(width: 5,),
          Text("Voice",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
          Spacer(flex:1),
          Switch(inactiveTrackColor:Colors.grey,value:is_switched2, onChanged:(value){
            setState(() {
              is_switched2=value;
            });
          },activeColor: AppColor.main_color,activeTrackColor: AppColor.switch_color,thumbIcon: MaterialStatePropertyAll(Icon(Icons.check)),)
        ],),
      ]),
    ),

    );
  }
}
