import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String text;
  final TextStyle style;
  final EdgeInsets padding;

  const TextContainer({
    Key? key,
    required this.text,
    required this.style,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
