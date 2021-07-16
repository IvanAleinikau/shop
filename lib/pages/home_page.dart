import 'package:flutter/material.dart';
import 'package:shop/widgets/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(),
      drawer: Menu(),
    );
  }
}
