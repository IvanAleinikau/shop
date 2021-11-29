import 'package:flutter/material.dart';

class AuthTextButton extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;
  final void Function()? onPressed;
  final String text;

  const AuthTextButton({
    Key? key,
    required this.padding,
    required this.textStyle,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: padding,
        textStyle: textStyle,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
