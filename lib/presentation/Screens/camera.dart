import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';
import 'package:graduation2_project/App_layer/app_fun.dart';
import 'package:graduation2_project/models/predict_model.dart';
import 'package:graduation2_project/presentation/Screens/prediction_screen.dart';
import 'package:graduation2_project/remote/predict_service.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;

  int direction = 0;

  @override
  void initState() {
    startCamera(direction);
    super.initState();
  }

  void startCamera(int direction) async {
    cameras = await availableCameras();
    cameraController = CameraController(
        cameras[direction], ResolutionPreset.high,
        enableAudio: false);
    await cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((e) {
      print(e);
    });
  }

  predict()async{
    try{
      File img = await pickImageFromGallery();
      print("img.path ${img.path}");
      showProgress(context);
      PredictModel result =  await PredictService().predict(img);
      if(result !=null){
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) => PredictionScreen(userName: "Samir", predictModel: result, img: img),));
      }
    }catch(e){

    }

  }
  pickImageFromGallery() async {
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        return File(pickedImage.path);
      }
    } catch (e) {
      return e;
    }
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (cameraController.value.isInitialized) {
      return Scaffold(
          body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          CameraPreview(cameraController),
          GestureDetector(
              onTap: () {
                setState(() {
                  direction = direction == 0 ? 1 : 0;
                  startCamera(direction);
                });
              },
              child: button(
                  Alignment.bottomLeft, Icons.flip_camera_android_outlined)),
          GestureDetector(
            onTap: () {
              cameraController.takePicture().then((XFile? file) {
                if (mounted) {
                  if (file != null) {
                    print("Picture saved to ${file.path}");
                  }
                }
              });
            },
            child: button(Alignment.bottomCenter, Icons.camera),
          ),
          GestureDetector(
            onTap: ()  {
        predict();
            },
            child: button(Alignment.bottomRight, Icons.image),
          ),
        ]),
      ));
    } else {
      return SizedBox();
    }
  }

  Widget button(Alignment alignment, [IconData? iconData]) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          bottom: 20,
        ),
        height: 50,
        width: 150,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: AppColor.button_color,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2, 2),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Icon(
            size: 30,
            iconData,
            color: AppColor.main_color,
          ),
        ),
      ),
    );
  }
}
