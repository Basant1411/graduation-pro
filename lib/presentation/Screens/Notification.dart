import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/App_layer/app_texts.dart';
import 'package:graduation2_project/presentation/Screens/Nav_bar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationState();
}

class _NotificationState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(child: Column(
    
        children: [
          Column(
            children: [
              Container(decoration: BoxDecoration(color:AppColor.button_color,borderRadius:BorderRadius.only(bottomRight:Radius.circular(400))),
                child: Column(children: [
                  SizedBox(height: 50,),
                  ListTile(leading:IconButton(icon:Icon(Icons.arrow_back_ios_new_outlined,color: AppColor.main_color,),onPressed: (){}),
                    title:
                    Text(AppText.CANWENOTIFYYOU
                        ,style: TextStyle(color:AppColor.main_color,fontSize: 20,fontWeight: FontWeight.w700)),


                  ),
                  SizedBox(height: 20,)


                ],

                ),),],),
          Column(crossAxisAlignment:CrossAxisAlignment.center,children: [
            SizedBox(height: 30,),
            Image.asset("lib/assets/images/Notification.png"),
            Text("Please allow us to send you ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
            Text("notification",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
            SizedBox(height: 20,),

            Padding(
                padding: const EdgeInsets.symmetric(horizontal:30),
                child: MaterialButton(minWidth:400,height:50,
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "ENABLE PUSH NOTIFICATION",
                    style: TextStyle(
                        color: AppColor.main_color,fontWeight:FontWeight.w400,fontSize: 22
                    ),
                  ),
                  color: AppColor.button_color, onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context){return BottomNavBar();}));

                  },


                ),

            ),
          SizedBox(height: 20,),
            GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context){return BottomNavBar();}));} ,child: Text("Do not allow",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),)),
            SizedBox(height: 150,),

          ]),
        ],
      )));
  }
}
