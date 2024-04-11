import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/App_layer/app_texts.dart';
import 'package:graduation2_project/presentation/Screens/access_camera.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:
      Column(
          children: [
           Column(
             children: [
            Container(decoration: BoxDecoration(color:AppColor.button_color,borderRadius:BorderRadius.only(bottomRight:Radius.circular(400))),
            child: Column(children: [
              SizedBox(height: 50,),
              ListTile(leading:IconButton(icon:Icon(Icons.arrow_back_ios_new_outlined,color: AppColor.main_color,),onPressed: (){}),
                title:
                Text(AppText.accessYourLocation
                    ,style: TextStyle(color:AppColor.main_color,fontSize: 20,fontWeight: FontWeight.w700)),
       
       
              ),
              SizedBox(height: 20,)
       
       
            ],
       
            ),),],),
            Column(children: [
              SizedBox(height: 70,),
              Image.asset("lib/assets/images/location.png",height: 200),
              SizedBox(height: 70,),
              Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30),
                    child: MaterialButton(minWidth:400,height:50,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "ENABLE LOCATION SERVICE",
                        style: TextStyle(
                            color: AppColor.main_color,fontWeight:FontWeight.w500,fontSize: 22
                        ),
                      ),
                      color: AppColor.button_color, onPressed:() {
                        Navigator.push(context, MaterialPageRoute(builder: (context){return Camera();}));
       
                      },
       
                    ),
                  ),
                SizedBox(height: 20,),
                Text("Please allow us to access your ",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 17),),
                Text(" location services ",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 17),),

              ]),
            SizedBox(height: 150,),

          ],
        ),


    );
  }
}
