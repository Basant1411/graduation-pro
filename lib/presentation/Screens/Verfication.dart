import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/App_layer/app_texts.dart';
import 'package:graduation2_project/presentation/Screens/reset_pass.dart';
class Verfication extends StatefulWidget {
  const Verfication({super.key});

  @override
  State<Verfication> createState() => _VerficationState();
}

class _VerficationState extends State<Verfication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          children: [

          Column(children: [
            Container(decoration: BoxDecoration(color:AppColor.button_color,borderRadius:BorderRadius.only(bottomRight:Radius.circular(400))),
                child: Column(children: [
                  SizedBox(height: 50,),
                ListTile(leading:IconButton(icon:Icon(Icons.arrow_back_ios_new_outlined,color: AppColor.main_color,),onPressed: (){}),
                  title:
                     Text(AppText.emailVerification
                        ,style: TextStyle(color:AppColor.main_color,fontSize: 25,fontWeight: FontWeight.w700)),


                ),
                SizedBox(height: 20,)
    ]) ),]),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 50,right: 30,bottom:15),
                child: Text("Get YOur Code",style: TextStyle(color: AppColor.button_color,fontSize: 17),),
              ),
              Text("Please enter the 4 digite code that ",style: TextStyle(color: AppColor.black_color,fontSize: 14),),
            Text("send to your email address",style: TextStyle(color: AppColor.black_color,fontSize: 14))
              ,SizedBox(height:30 ,)
            ,OtpTextField(numberOfFields: 4,borderRadius: BorderRadius.circular(16),fieldHeight: 50,fieldWidth: 62,
                  borderColor: Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
            //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                  );
                }
            );
                  }, // end onSubmit
                ),
            SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("if youdon'treceive code "),
                  InkWell(child: Text("Resent ",style: TextStyle(color: AppColor.button_color)),onTap: (){return activate();},)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left:35,right: 35,top:15),
                child: MaterialButton(minWidth:400,height:50,
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Verified",
                    style: TextStyle(
                        color: AppColor.main_color,fontWeight:FontWeight.w500,fontSize: 22
                    ),
                  ),
                  color: AppColor.button_color, onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context){return Reset();}));

                  },


                ),
              ),
            ]),

        );
  }
}
