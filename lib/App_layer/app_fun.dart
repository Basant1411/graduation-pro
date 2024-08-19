import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';

showProgress(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) =>
    const Center(child: CircularProgressIndicator(
      color: AppColor.button_color ,
    )),
  );
}