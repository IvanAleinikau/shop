import 'package:flutter/material.dart';
import 'package:shop/app/theme/color_palette.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 12.0,
      color: ColorPalette.whiteColor,
    );
  }
}
