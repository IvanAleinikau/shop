import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 320,
            child: Center(
              child: Image(
                image: AssetImage('asset/image/logo_shop.jpg'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Email',
                  hintText: 'Enter email'),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'Password',
                hintText: 'Enter password',
              ),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Log in'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.deepPurpleAccent),
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 130,
          ),
          TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.only(bottom: 15),
                textStyle: TextStyle(fontSize: 15),
              ),
              onPressed: () {},
              child: Text('New User? Create Account')),
        ],
      ),
    ));
  }
}
