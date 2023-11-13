import 'package:flutter/material.dart';

class AppBoxDecorationsStyles {
  static BoxDecoration boxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        offset: const Offset(0.0, 3.0),
        blurRadius: 5.0,
      )
    ],
  );
}
