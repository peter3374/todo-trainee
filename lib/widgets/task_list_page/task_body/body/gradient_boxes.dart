import 'package:flutter/material.dart';
import 'package:todo/widgets/common/gradient_color.dart';

class BodyColors {
  static const emptyTaskBody = BoxDecoration(
    borderRadius: BorderRadius.all(
        Radius.circular(20)), // BorderRadius.circular(20), // not available
    boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
    color: Colors.white,
  );

  static const gradientTaskBody = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
    gradient: LinearGradient(
      colors: Gradients.gradient,
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
  );

  static const schreduleBody = BoxDecoration(
    boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
    gradient: LinearGradient(
      colors: Gradients.gradient,
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
  );
}
