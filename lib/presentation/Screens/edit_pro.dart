import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';

class EditProf extends StatefulWidget {
  const EditProf({super.key});

  @override
  State<EditProf> createState() => _EditProfState();
}

class _EditProfState extends State<EditProf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.main_color,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_new_outlined),onPressed: (){ Navigator.pop(context);},),
        title: Text("Edit Profile"),
      ),

    body:  SingleChildScrollView(
      child: Column( mainAxisAlignment:MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start,children: [
        SizedBox(height: 12,),
      
        Center(child: Container(
        child: Column(children: [  CircleAvatar(maxRadius:40,backgroundImage: AssetImage("lib/assets/images/pp2.jpg"),) ,
      SizedBox(height: 12,),
      ],),
      )),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text("Name",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
        ),
          Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,bottom: 20,top:6),
              child: TextField(
                clipBehavior: Clip.hardEdge,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        borderSide: BorderSide(color: AppColor.main_color)
                    ),
                    hintText: "Melissa Peters",
                    hintStyle: TextStyle(color: AppColor.hint_text_color),
                    hoverColor: AppColor.button_color,
                    fillColor: AppColor.Intext_field_color),
      
              ),
      
          ),Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text("Email",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
        ),
          Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,bottom: 20,top:6),
              child: TextField(
                clipBehavior: Clip.hardEdge,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        borderSide: BorderSide(color: AppColor.main_color)
                    ),
                    hintText: "melpeters@gmail.com",
                    hintStyle: TextStyle(color: AppColor.hint_text_color),
                    hoverColor: AppColor.button_color,
                    fillColor: AppColor.Intext_field_color),
      
              ),
      
          ),Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text("Password",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
        ),
          Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,bottom: 20,top:6),
              child: TextField(obscureText: true,
                clipBehavior: Clip.hardEdge,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        borderSide: BorderSide(color: AppColor.main_color)
                    ),
                    hintText: "************",
                    hintStyle: TextStyle(color: AppColor.hint_text_color),
                    hoverColor: AppColor.button_color,
                    fillColor: AppColor.Intext_field_color),
      
              ),
      
          ),
          Center(
            child: MaterialButton(minWidth:MediaQuery.of(context).size.width/2+70,height:60,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Save changes",
                style: TextStyle(
                    color: AppColor.main_color,fontWeight:FontWeight.w500,fontSize: 20
                ),
              ),
              color: AppColor.button_color, onPressed:() {
             Navigator.pop(context);
              },
      
      
            ),
          ),
      ]),
    ));
  }
}
