class PredictModel {
  final String class_id;
  final String class_name;

  PredictModel({required this.class_id, required this.class_name});

  factory PredictModel.fromJson(jsonData){
    return PredictModel(
        class_id: jsonData['class_id'], class_name: jsonData['class_name']);
  }
}
