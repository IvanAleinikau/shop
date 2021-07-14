import 'package:flutter/material.dart';
import 'package:shop/pages/home.dart';
import 'package:shop/pages/login_page.dart';
import 'package:shop/pages/register_page.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.pink,
  ),
  initialRoute: '/login',
  routes: {
    '/home': (context) => HomePage(),
    '/login': (context) => LoginPage(),
    '/register': (context) => RegisterPage(),
  },
));


