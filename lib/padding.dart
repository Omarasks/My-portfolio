import 'package:flutter/material.dart';

class ResponsivePadding {
  static horizontal(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 1200) {
      return 32;
    } else if (width < 1600) {
      return 64;
    } else {
      return 100;
    }
  }
}
