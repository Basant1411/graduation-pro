import 'package:flutter/material.dart';
import 'package:graduation2_project/App_layer/app_color.dart';

class PredictionButton extends StatelessWidget {
  PredictionButton(
      {required this.child,
        required this.shapeBorder,
        required this.onPressed,
        required this.padding
      });

  final Widget child;
  final ShapeBorder shapeBorder;
  final  onPressed;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: MaterialButton(
          onPressed: onPressed,
          shape: shapeBorder,
          padding: padding,
          color: AppColor.button_color,
          child: child),
    );
  }
}
