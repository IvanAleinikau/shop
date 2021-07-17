import 'package:flutter/material.dart';
import 'package:shop/provider/auth_provider.dart';
import 'package:shop/screens/authScreen/login_page.dart';
import 'package:shop/screens/home_page.dart';


class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();


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
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 15),
                child: TextField(
                  controller: _confirmPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Confirm password',
                    hintText: 'Confirm password',
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    if(_password.text.trim()==_confirmPassword.text.trim()) {
                      Auth()
                          .createAccount(
                          email: _email.text.trim(),
                          password: _password.text.trim())
                          .then((message) {
                        if (message == "Account created") {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                                  (route) => false);
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(message)));
                        }
                      });
                    }else{
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('Password mismatch')));
                    }
                  },
                  child: Text('Sing up'),
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
                height: 50,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.only(bottom: 15),
                    textStyle: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage()));
                  },
                  child: Text('Already have an account? Login')),
            ],
          ),
        ),
    );
  }
}
