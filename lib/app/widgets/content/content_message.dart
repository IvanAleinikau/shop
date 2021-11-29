import 'package:flutter/material.dart';

class ContentMessage extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  const ContentMessage({
    Key? key,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
