import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: const Center(
        child: Image(
          image: AssetImage('asset/image/logo_shop.jpg'),
        ),
      ),
    );
  }
}
