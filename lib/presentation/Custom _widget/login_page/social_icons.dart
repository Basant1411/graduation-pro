import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Container(height:30,width: 40,padding: EdgeInsets.all(10),child:Image.asset("lib/assets/images/2.png"),decoration: BoxDecoration(color: AppColor.container_color,shape:BoxShape.rectangle,borderRadius: BorderRadius.circular(9))),SizedBox(width: 5,),
        Container(height:30,width: 40,padding: EdgeInsets.all(5),child: Icon(Icons.facebook_rounded,color: AppColor.black_color,size: 15),decoration: BoxDecoration(color: AppColor.container_color,shape:BoxShape.rectangle,borderRadius: BorderRadius.circular(9))),SizedBox(width: 5,),
       Container(height:30,width: 40,padding: EdgeInsets.all(5),child: Icon(Icons.apple,color: AppColor.black_color,size: 18),decoration: BoxDecoration(color: AppColor.container_color,shape:BoxShape.rectangle,borderRadius: BorderRadius.circular(9)),),
        ],);
  }
}
