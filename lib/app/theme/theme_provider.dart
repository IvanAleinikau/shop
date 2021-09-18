import 'package:flutter/material.dart';
import 'package:shop/app/theme/color_palette.dart';


class ThemeProvider{
  static ThemeData getTheme(){
    return ThemeData(
      textTheme: const TextTheme(
        headline2: _TextStyle.appBar,
      )
    );
  }
}

class _TextStyle{
  static const appBar = TextStyle(
    color: ColorPalette.textColor,
    fontFamily: 'Oxygen',
  );
}