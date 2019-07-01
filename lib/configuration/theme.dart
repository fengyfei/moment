import 'package:flutter/material.dart';

final ThemeData applicationTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    primaryColor: Color(0xff621295),
    brightness: Brightness.light,
    //cardColor: Color(0xfff4f4f4), // grey
    cardColor: Color(0xfff9a828),
  );
}
