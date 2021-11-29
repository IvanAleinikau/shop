import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  final TextEditingController? controller;
  final EdgeInsetsGeometry padding;
  final bool obscure;
  final String labelText;
  final String hintText;

  const AuthInput({
    Key? key,
    required this.controller,
    required this.padding,
    required this.obscure,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextField(
        obscureText: obscure,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
