import 'package:flutter/material.dart';
import 'package:graduation2_project/presentation/Screens/home2.dart';
import 'package:graduation2_project/presentation/Screens/login_screen.dart';

class ChooseAreYou extends StatefulWidget {
  const ChooseAreYou({super.key});

  @override
  State<ChooseAreYou> createState() => _ChooseAreYouState();
}

class _ChooseAreYouState extends State<ChooseAreYou> {

  Color _continercolor1=Color(0xffF1F1F1);
  Color _bordercolor1=Color(0xff000000);
  Color _bordercolor2=Color(0xff000000);
  Color _continercolor2=Color(0xffF1F1F1);
  void _changeContainerProp1(){
    setState(() {
      _bordercolor1=_bordercolor1==Color(0xff000000)?Color(0xff1F41BB):Color(0xff000000);;
      _continercolor1=_continercolor1==Color(0xffF1F1F1)?Color(0xffDCE7FC):Color(0xffF1F1F1);
    });
  } void _changeContainerProp2(){
    setState(() {
      _bordercolor1=_bordercolor1==Color(0xff000000)?Color(0xff1F41BB):Color(0xff000000);
      _continercolor2=_continercolor2==Color(0xffF1F1F1)?Color(0xffDCE7FC):Color(0xffF1F1F1);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(//crossAxisAlignment:CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(flex:2),

          Text("Choose who you are ?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),


          Spacer(flex: 2,),
          Row(children: [SizedBox(width: 15,),
            GestureDetector(onTap: (){_changeContainerProp1();Navigator.push(context,MaterialPageRoute(builder: (context){return LoginScreen();}));},child: Container(height: 90,width:150,child:Center(child: Text("Student",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:_continercolor1,border:Border.all(color:_bordercolor1,width:3)),)),
            Spacer(flex:2,),
            GestureDetector(onTap: (){_changeContainerProp2();Navigator.push(context,MaterialPageRoute(builder: (context){return HomeScreen2();}));},child: Container(height: 90,width:150,child:Center(child: Text("Blind",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:_continercolor2,border:Border.all(color:_bordercolor2,width:3)),)),
            SizedBox(width: 15,),
          ],),

          Spacer(flex: 1,),

        ],

      ),

    );
  }
}
