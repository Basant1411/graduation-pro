import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/App_layer/app_texts.dart';
import 'package:graduation2_project/presentation/Screens/Verfication.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  static const color=AppColor.button_color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        children: [
          SingleChildScrollView(
           child:
              Column(children: [
          Container(decoration: BoxDecoration(color:AppColor.button_color,borderRadius:BorderRadius.only(bottomRight:Radius.circular(400))),
        child: Column(children: [
      SizedBox(height: 50,),
      ListTile(leading:IconButton(icon:Icon(Icons.arrow_back_ios_new_outlined,color: AppColor.main_color,),onPressed: (){}),
        title:
           Text(AppText.forgetPass
              ,style: TextStyle(color:AppColor.main_color,fontSize: 25,fontWeight: FontWeight.w700)),


      ),
      SizedBox(height: 20,)


    ]),) ]),),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30,right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppText.mailaddress,
                      style: TextStyle(color: AppColor.button_color),
                    ),
                    Text(AppText.email_address,style: TextStyle(color: AppColor.black_color),),
                    Text(AppText.acc,style: TextStyle(color: AppColor.black_color),),
                    SizedBox(height: 30,),
                    TextField(
                      clipBehavior: Clip.hardEdge,
                      decoration: InputDecoration(filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10)
                            ),
              borderSide: BorderSide(color: AppColor.main_color)
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(color: AppColor.hint_text_color),
                          hoverColor: AppColor.button_color,
                          fillColor: AppColor.Intext_field_color),
                      autofocus: true,
                    ),
                    SizedBox(height: 40,),
                MaterialButton(minWidth:400,height:50,
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        color: AppColor.main_color,fontWeight:FontWeight.w500,fontSize: 22
                    ),
                  ),
                  color: AppColor.button_color, onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context){return Verfication();}));

                  },


                ),
                  ],
                ),

              ),


        ],
      ),
    );
  }
}
