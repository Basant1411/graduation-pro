import 'package:flutter/material.dart';
import 'package:graduation2_project/presentation/Screens/onboarding.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachSCreenState();
}

class _SplachSCreenState extends State<SplachScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return OnBoarding2();
      }));
    });
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.white,
        body: const Center(
            child: Image(image: AssetImage("lib/assets/images/1.png"),)
        ),
      ),
    );
  }


}
