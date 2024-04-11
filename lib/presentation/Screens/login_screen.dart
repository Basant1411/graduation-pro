import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/App_layer/app_texts.dart';
import 'package:graduation2_project/presentation/Custom%20_widget/login_page/forget_btn.dart';
import 'package:graduation2_project/presentation/Custom%20_widget/login_page/login_btn.dart';
import 'package:graduation2_project/presentation/Custom%20_widget/login_page/new_acc.dart';
import 'package:graduation2_project/presentation/Custom%20_widget/login_page/social_icons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:ListView(padding: EdgeInsets.zero,
        children: [
          Container(decoration: BoxDecoration(color:AppColor.button_color,borderRadius:BorderRadius.only(bottomRight:Radius.circular(400))),
            child: Column(children: [
              SizedBox(height: 50,),
              ListTile(
                  title: Center(
                    child: Text(AppText.login_text
                        ,style: TextStyle(color:AppColor.main_color,fontSize: 25,fontWeight: FontWeight.w700)),
                  ),
              ),

SizedBox(height: 30,)
            ],
            ),),

            SizedBox(height: 20,),


               Center(
                 child: Text(
                  AppText.welcome_text,
                  style: TextStyle(
                      color: AppColor.black_color,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                               ),
               ),


              Center(
                child: Text(
                  AppText.missed_text,
                  style: TextStyle(
                      color: AppColor.black_color,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),

                            ),
              ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextField(

                clipBehavior: Clip.hardEdge,
                decoration: InputDecoration(filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: AppColor.hint_text_color),
                    hoverColor: AppColor.button_color,
                    fillColor: AppColor.Intext_field_color),

              ),
            ),
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(left:30,right:30),
              child: TextField(
                clipBehavior: Clip.hardEdge,
                decoration: InputDecoration(filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                    hintText: "password",
                    fillColor: AppColor.Intext_field_color),
                obscureText: true,
              ),
            ),
            SizedBox(height: 30,),
            ForgetBtn(),
            SizedBox(height: 30,),
            LoginBtn(),
            SizedBox(height: 50,),
        NewAcc(),
            SizedBox(height: 50,),
            Center(child: Text("Or continue with",style: TextStyle(color: AppColor.button_color))),

            SizedBox(height: 30,),

        SocialIcons(),




            ],
        ),


    );
  }
}
