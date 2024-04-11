import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override


  Widget build(BuildContext context) {
    return Scaffold(

      body:
          ListView(padding: EdgeInsets.zero,
          children: [
            Container(decoration: BoxDecoration(color:AppColor.button_color,borderRadius:BorderRadius.only(bottomRight:Radius.circular(100))),
            child: Column(children: [
              SizedBox(height: 50,),
              ListTile(
                title: Center(
                  child: Text(" Welcome !!",style: TextStyle(color:AppColor.main_color,fontWeight: FontWeight.bold,fontSize: 25)),
                ),


              ),
            SizedBox(height: 10,)],

            ),),

 Padding(
   padding: const EdgeInsets.only(top:16,left:20,right: 20),
   child: Container(width:MediaQuery.of(context).size.width,height:90,decoration:BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(16),color:Color(0xffF1F4FF),),child: Row(children: [
   SizedBox(width: 30,),  Image.asset("lib/assets/images/1.png",width:42,height:42,) ,SizedBox(width: 10,),Text(" The First Choise to explore places ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16)),

   ],)),
 ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(height: 100,width: 70,
                child: ListView(reverse: true,scrollDirection: Axis.horizontal,children: [
                  Image.asset("lib/assets/images/1L.png"),
                  Image.asset("lib/assets/images/2l.png"),
                  Image.asset("lib/assets/images/3L.png"),
                  Image.asset("lib/assets/images/4LL.png"),
                  Image.asset("lib/assets/images/5L.png"),
                  Image.asset("lib/assets/images/3L.png"),
                  Image.asset("lib/assets/images/4LL.png"),
                  Image.asset("lib/assets/images/5L.png"),
                  Image.asset("lib/assets/images/6L.png"),
                  Image.asset("lib/assets/images/7L.png"),



                ],),
              ),
            ),
Column(
  children: [
    Image.asset("lib/assets/images/backh.png",),
    SizedBox(height: 40,),
    Text("Faculty of Computers and Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),
        Text( "   Mansoura University",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
  ],
)

          ],

          ),




    );
  }
}
