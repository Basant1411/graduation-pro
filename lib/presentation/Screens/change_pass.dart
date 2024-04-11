import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({super.key});

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  bool _obsecure=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.main_color,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_new_outlined),onPressed: (){ Navigator.pop(context);},),
        title: Text("Change Password"),
      ),
      body: SingleChildScrollView(
        child: Column( mainAxisAlignment:MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start,children: [
        SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 30),
            child: Text("Current Password",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,bottom: 20,top:6),
            child: TextField(obscureText: _obsecure,
              clipBehavior: Clip.hardEdge,
              decoration: InputDecoration(suffixIcon:IconButton(icon:Icon(Icons.remove_red_eye),onPressed:(){
                setState(() {
                  _obsecure=!_obsecure;
                });
              },),
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
        
          ),Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text("New Password",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
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
        
          ),Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(" Confirm Password",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
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
          )]),
      )
    );
  }
}
