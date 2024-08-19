import 'dart:convert';
import 'dart:io';

import 'package:graduation2_project/models/predict_model.dart';
import 'package:http/http.dart' as http;

class PredictService {
  String url = 'http://10.0.2.2:5000/predict';

  Future predict(File img) async {
    var uri = Uri.parse(url);
    final request = await http.MultipartRequest('POST', uri);
    final header = {"Content-Type": "multipart/form-data"};
    request.files.add(http.MultipartFile(
        'file', img.readAsBytes().asStream(), img.lengthSync() ,
        filename: img.path.split('/').last));
    request.headers.addAll(header);
    final myRequest = await request.send();
    http.Response response = await http.Response.fromStream(myRequest);
    if (myRequest.statusCode == 200) {
      final decodedJson = jsonDecode(response.body);
      return PredictModel.fromJson(decodedJson);
    } else {
      print("error ${myRequest.statusCode}");
      return myRequest.statusCode;
    }
  }
}
