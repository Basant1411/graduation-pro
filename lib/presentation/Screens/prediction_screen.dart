import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/models/predict_model.dart';
import 'package:graduation2_project/presentation/Custom%20_widget/login_page/button.dart';

class PredictionScreen extends StatefulWidget {
  PredictionScreen(
      {required this.userName, required this.predictModel, required this.img});

  final String userName;
  final File img;
  final PredictModel predictModel;

  @override
  State<PredictionScreen> createState() => _PredictionScreenState();
}

class _PredictionScreenState extends State<PredictionScreen> {
  final AppColor _color = AppColor();

  final FlutterTts flutterTts = FlutterTts();

  Future<dynamic> speak() async {
    flutterTts.setLanguage('ar');
    flutterTts.getVoices;
    flutterTts.setPitch(1); // 0.5:1.5
    flutterTts.setSpeechRate(0.3);
    flutterTts.speak(widget.predictModel.class_name);
  }

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    flutterTts.stop();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.chevron_left,
            size: 30,
          ),
        ),
        actions: [
          Text(
            widget.userName,
            style: const TextStyle(fontSize: 20),
          ),
          const Icon(
            Icons.person_outline,
            size: 40,
          ),
          const SizedBox(
            width: 30,
          )
        ],
      ),
      body: SizedBox(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: width * 0.9,
              height: 240,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: FileImage(widget.img), fit: BoxFit.cover),
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(22)),
            ),
            Container(
              alignment: Alignment.center,
              width: width * 0.9,
              height: 240,
              child: Text(
                widget.predictModel.class_name,
                style: TextStyle(fontSize: 20),
              ),
              transformAlignment: Alignment.topRight,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(22)),
            ),
            PredictionButton(
              shapeBorder: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              onPressed: () {
                speak();
              },
              child: const Icon(
                Icons.play_circle,
                color: Colors.white,
                size: 35,
              ),
            ),
            SizedBox(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PredictionButton(
                    shapeBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                    onPressed: () {},
                    child: const Text(
                      'English',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  PredictionButton(
                    shapeBorder: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    onPressed: () {},
                    child: const Icon(
                      Icons.settings_backup_restore,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
