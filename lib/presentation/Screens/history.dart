import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.main_color,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_new_outlined),onPressed: (){ Navigator.pop(context);},),
        title: Text("Search History"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 65,bottom:20),
              child: Container(height: 180,width: 250,color:AppColor.main_color,child:Image.asset("lib/assets/images/1H.jpg"),
            ),
          ),),
          Container(child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start,children: [
              Text(" Faculty of Veterinary Medicine",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
              Text("   Mansourah University..........",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
            ],),),
          Padding(
            padding: const EdgeInsets.only(left: 22,right: 20,top: 35),
            child: Row(children: [Icon(Icons.keyboard_voice,color: Colors.grey),
              SizedBox(width: 5,),
              Text("Voice",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
            Spacer(flex: 1,),
            InkWell(child: Text("More",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),),onTap:(){},radius:16 ,)
            ],),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20,bottom:10),
              child: Container(height: 200,width: 260,color:AppColor.main_color,child: Image.asset("lib/assets/images/2H.jpg"),),
            ),
          ),
          Container(child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start,children: [
            Text(" Faculty of Commerce",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
            Text(" Mansourah University...........",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
          ],),),
          Padding(
            padding: const EdgeInsets.only(left: 22,right: 20,top: 20),
            child: Row(children: [Icon(Icons.keyboard_voice,color: Colors.grey),
              SizedBox(width: 5,),
              Text("Voice",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
              Spacer(flex: 1,),
              InkWell(child: Text("More",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),),onTap:(){},radius:16 ,)
            ],),
          ),
        ]),
      ),
    );




  }
}
