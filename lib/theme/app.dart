import 'package:flutter/material.dart';

class Shadow {
  static const sm = BoxShadow(
    color: Color.fromRGBO(149, 157, 165, 0.1),
    blurRadius: 14,
    spreadRadius: 0,
    offset: Offset(
      0,
      8,
    ),
  );
}

class Themes {
  static final light = ThemeData.light().copyWith();
  static final dark = ThemeData.dark().copyWith();
}
