import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/presentation/Screens/access_location.dart';

class LoginBtn extends StatefulWidget {
  const LoginBtn({super.key});

  @override
  State<LoginBtn> createState() => _LoginBtnState();
}

class _LoginBtnState extends State<LoginBtn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:30,left: 30),
      child: MaterialButton(minWidth:400,height:50,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text(
            "Log in",
            style: TextStyle(
              color: AppColor.main_color,fontWeight:FontWeight.w500,fontSize: 22
            ),
          ),
          color: AppColor.button_color, onPressed:() {
          Navigator.push(context, MaterialPageRoute(builder: (context){return Location();}));

        },


      ),
    );
  }
}
