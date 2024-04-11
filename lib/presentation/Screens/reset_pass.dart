import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/App_layer/app_texts.dart';
import 'package:graduation2_project/presentation/Screens/login_screen.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetPassState();
}

class _ResetPassState extends State<Reset> {
  bool _obscurePass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Column(
          children: [
            Column(
              children: [
          Container(decoration: BoxDecoration(color:AppColor.button_color,borderRadius:BorderRadius.only(bottomRight:Radius.circular(400))),
          child: Column(children: [
            SizedBox(height: 50,),
            ListTile(leading:IconButton(icon:Icon(Icons.arrow_back_ios_new_outlined,color: AppColor.main_color,),onPressed: (){}),
              title:
             Text(AppText.resetPassword
                    ,style: TextStyle(color:AppColor.main_color,fontSize: 25,fontWeight: FontWeight.w700)),

      
            ),
            SizedBox(height: 20,)
      
      
              ],)
      
          ), ],),  
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 50,right: 30,bottom:15),
                    child: Text("Enter New Password ",style: TextStyle(color: AppColor.button_color,fontSize: 19),),
                  ),
                  Text("Your new password must be different "),
                  SizedBox(height: 2,),
                  Text(    "from previously used password "),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      clipBehavior: Clip.hardEdge,
                      decoration: InputDecoration(filled: true,suffixIcon:IconButton(icon:Icon(Icons.lock_outline_rounded),onPressed: (){
                        setState(() {
                          _obscurePass=! _obscurePass;
                        });
                      }),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              ),
                              borderSide: BorderSide(color: AppColor.main_color)
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(color: AppColor.hint_text_color),
                          hoverColor: AppColor.button_color,
                          fillColor: AppColor.Intext_field_color),
                      autofocus: true,obscureText:_obscurePass,
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16,top: 7),
                    child: TextField(
                      clipBehavior: Clip.hardEdge,
                      decoration: InputDecoration(filled: true,suffixIcon: IconButton(icon:Icon(Icons.lock_outline_rounded),onPressed: (){
                        setState(() {
                          _obscurePass=!
                          _obscurePass;
                        });
                      }),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              ),
                              borderSide: BorderSide(color: AppColor.main_color)
                          ),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(color: AppColor.hint_text_color),
                          hoverColor: AppColor.button_color,
                          fillColor: AppColor.Intext_field_color),
                      autofocus: true,obscureText:_obscurePass,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: MaterialButton(minWidth:400,height:50,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Done",
                        style: TextStyle(
                            color: AppColor.main_color,fontWeight:FontWeight.w500,fontSize: 22
                        ),
                      ),
                      color: AppColor.button_color, onPressed:() {
                 Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();}));
                      },
      
      
                    ),
                  ),
      
                ],
            ),
          ],
      
      ),
    ),
   );
  }
}
