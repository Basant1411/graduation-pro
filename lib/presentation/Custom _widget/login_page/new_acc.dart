import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/App_layer/app_texts.dart';
import 'package:graduation2_project/presentation/Screens/Register_screen.dart';

class NewAcc extends StatefulWidget {
  const NewAcc({super.key});

  @override
  State<NewAcc> createState() => _NewAccState();
}

class _NewAccState extends State<NewAcc> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
      return RegisterScreen();
    }));},
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.zero),
        child: Text(AppText.newAcc_text,style: TextStyle(color: AppColor.black_color)),

      ),
   );
  }
}
