import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/App_layer/app_texts.dart';
import 'package:graduation2_project/presentation/Screens/Forget_pass.dart';

class ForgetBtn extends StatefulWidget {
  const ForgetBtn({super.key});

  @override
  State<ForgetBtn> createState() => _ForgetBtnState();
}

class _ForgetBtnState extends State<ForgetBtn> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right:30),
      child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (build){return ForgetPass();}));},
        child: Container(
            alignment: Alignment.centerRight,
          decoration: BoxDecoration(borderRadius: BorderRadius.zero),
          child: Text(AppText.forget_text,style: TextStyle(color: AppColor.button_color)),

        ),
      ),
    );}
}
