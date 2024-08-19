import 'package:flutter/material.dart';

import '../../App_layer/app_color.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => NextScreen()),
    );
  }

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
                      Text("Notification"
                          ,style: TextStyle(color:AppColor.main_color,fontSize: 25,fontWeight: FontWeight.w700)),


                    ),
                    SizedBox(height: 20,)
                  ]) ),]),
            Padding(padding: EdgeInsets.only(top:100)
              ,child:Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: Colors.grey,
                      strokeWidth: 1.1,),
                    CircleAvatar(radius: 170,backgroundColor: Colors.blueGrey,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Stack(
                            children: [
                              Icon(
                                Icons.notifications,
                                size: 50,
                                color: Color(0xFF3D5AFE),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),

    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: SingleChildScrollView(
      child: Column(
          children: [

            Column(children: [
              Container(decoration: BoxDecoration(color:AppColor.button_color,borderRadius:BorderRadius.only(bottomRight:Radius.circular(400))),
                  child: Column(children: [
                    SizedBox(height: 50,),
                    ListTile(leading:IconButton(icon:Icon(Icons.arrow_back_ios_new_outlined,color: AppColor.main_color,),onPressed: (){}),
                      title:
                      Text("Notification"
                          ,style: TextStyle(color:AppColor.main_color,fontSize: 25,fontWeight: FontWeight.w700)),


                    ),
                    SizedBox(height: 20,)
                  ]) ),]),
            Padding(
              padding: const EdgeInsets.only(top:40,left: 20,right: 20),
              child: Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(40)),width: MediaQuery.of(context).size.width,height: 70,child: Row(children: [
                Text("notification 1",style: TextStyle(color: AppColor.main_color),),
                Spacer(flex: 1,),
                Icon(Icons.cancel,size:30,),
              ],),),
            ),Padding(
              padding: const EdgeInsets.only(top:40,left: 20,right: 20),
              child: Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(40)),width: MediaQuery.of(context).size.width,height: 70,child: Row(children: [
                Text("notification 2",style: TextStyle(color: AppColor.main_color),),
                Spacer(flex: 1,),
                Icon(Icons.cancel,size:30,),
              ],),),
            ),Padding(
              padding: const EdgeInsets.only(top:40,left: 20,right: 20),
              child: Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(40)),width: MediaQuery.of(context).size.width,height: 70,child: Row(children: [
                Text("notification 3",style: TextStyle(color: AppColor.main_color),),
                Spacer(flex: 1,),
                Icon(Icons.cancel,size:30,),
              ],),),
            ),Padding(
              padding: const EdgeInsets.only(top:40,left: 20,right: 20),
              child: Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(40)),width: MediaQuery.of(context).size.width,height: 70,child: Row(children: [
                Text("notification 4",style: TextStyle(color: AppColor.main_color),),
                Spacer(flex: 1,),
                Icon(Icons.cancel,size:30,),
              ],),),
            ),Padding(
              padding: const EdgeInsets.only(top:40,left: 20,right: 20),
              child: Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(40)),width: MediaQuery.of(context).size.width,height: 70,child: Row(children: [
                Text("notification 5",style: TextStyle(color: AppColor.main_color),),
                Spacer(flex: 1,),
                Icon(Icons.cancel,size:30,),
              ],),),
            ),Padding(
              padding: const EdgeInsets.only(top:40,left: 20,right: 20),
              child: Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(40)),width: MediaQuery.of(context).size.width,height: 70,child: Row(children: [
                Text("notification 6",style: TextStyle(color: AppColor.main_color),),
                Spacer(flex: 1,),
                Icon(Icons.cancel,size:30,),
              ],),),
            )






          ]),
    ),

    );
  }
}
