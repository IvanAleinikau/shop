import 'package:flutter/material.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/theme/font_size.dart';

class Style {
  static const vinylName = TextStyle(
    color: ColorPalette.titleColor,
    fontSize: FontSize.vinylNameFont,
  );

  static const vinylAuthor = TextStyle(
    color: ColorPalette.subtitleColor,
    fontSize: FontSize.vinylAuthorFont,
  );

  static const vinylCost = TextStyle(
    color: ColorPalette.costColor,
    fontSize: FontSize.vinylAuthorFont,
  );

  static const vinylDescription = TextStyle(
    color: ColorPalette.subtitleColor,
    fontSize: FontSize.vinylDescriptionFont,
  );

  static const vendorCode = TextStyle(
    color: ColorPalette.vendorCodeColor,
    fontSize: FontSize.vendorCodeFont,
  );

  static const code = TextStyle(
    fontSize: FontSize.vendorCodeFont,
    decoration: TextDecoration.underline,
  );

  static const options = TextStyle(
    fontSize: FontSize.optionsFont,
  );

  static const args = TextStyle(
    fontSize: FontSize.argsFont,
    color: ColorPalette.subtitleColor,
  );
}
