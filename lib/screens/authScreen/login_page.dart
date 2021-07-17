import 'package:flutter/material.dart';
import 'package:shop/provider/auth_provider.dart';
import 'package:shop/screens/authScreen/register_page.dart';
import 'package:shop/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

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
              controller: _email,
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
              controller: _password,
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
              onPressed: () {
                Auth()
                    .signIN(
                        email: _email.text.trim(),
                        password: _password.text.trim())
                    .then((value) {
                  if (value == "Welcome") {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                        (route) => false);
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(value)));
                  }
                });
              },
              child: Text('Login'),
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Text('New User? Create Account')),
        ],
      ),
    ));
  }
}
