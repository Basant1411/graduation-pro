import 'dart:io';
import 'predict_service.dart';

void main(){
  File _image=File('lib/assets/images/photo_2023-11-08_19-54-38.jpg');
  PredictService().predict(_image);




}

