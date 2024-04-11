import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/App_layer/app_texts.dart';
import 'package:graduation2_project/presentation/Screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
               Column(
                children: [
                  Container(decoration: BoxDecoration(color:AppColor.button_color,borderRadius:BorderRadius.only(bottomRight:Radius.circular(400))),
                    child: Column(children: [
                      SizedBox(height: 50,),
                      ListTile(
                        title: Center(
                          child: Text(AppText.createAcc_text
                              ,style: TextStyle(color:AppColor.main_color,fontSize: 25,fontWeight: FontWeight.w700)),
                        ),

                      ),
                      SizedBox(height: 20,)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: Column(children: [
              Text(
                AppText.createExp_text,
                style: TextStyle(
                    color: AppColor.black_color,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                AppText.exist_text,
                style: TextStyle(
                    color: AppColor.black_color,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                clipBehavior: Clip.hardEdge,
                decoration: InputDecoration(filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                    hintText: "user name",
                    hintStyle: TextStyle(color: AppColor.hint_text_color),
                    hoverColor: AppColor.button_color,
                    fillColor: AppColor.Intext_field_color),
                autofocus: true,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
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
                autofocus: true,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                clipBehavior: Clip.hardEdge,
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                    hintText: "password",
                    fillColor: AppColor.Intext_field_color),
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                clipBehavior: Clip.hardEdge,
                decoration: InputDecoration(filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(13),
                      ),
                    ),
                    hintText: "confirm password",
                    fillColor: AppColor.Intext_field_color),
                obscureText: true,
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                minWidth: 400,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      color: AppColor.main_color,
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                ),
                color: AppColor.button_color,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              ),
              SizedBox(
                height: 30,
              ),
              Text(AppText.have_acc),
              SizedBox(
                height: 7,
              ),
              Text("Or continue with",
                  style: TextStyle(color: AppColor.button_color)),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 30,
                      width: 40,
                      padding: EdgeInsets.all(10),
                      child: Image.asset("lib/assets/images/2.png"),
                      decoration: BoxDecoration(
                          color: AppColor.container_color,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(9))),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 30,
                      width: 40,
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.facebook_rounded,
                        color: AppColor.black_color,
                        size: 18,
                      ),
                      decoration: BoxDecoration(
                          color: AppColor.container_color,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(9))),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.apple,
                      color: AppColor.black_color,
                      size: 18,
                    ),
                    decoration: BoxDecoration(
                        color: AppColor.container_color,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(9)),
                  ),
                ],
              )
                        ],
                      ),
            ),
                ],),

    ])));
  }
}
