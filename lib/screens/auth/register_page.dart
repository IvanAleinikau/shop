import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/provider/auth_provider.dart';
import 'package:shop/screens/auth/login_page.dart';
import 'package:shop/screens/news/home_page.dart';


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
                      labelText: AppLocalization.of(context)!.email,
                      hintText: AppLocalization.of(context)!.enterEmail),
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
                    labelText: AppLocalization.of(context)!.password,
                    hintText: AppLocalization.of(context)!.enterPassword,
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
                    labelText: AppLocalization.of(context)!.confirmPassword,
                    hintText: AppLocalization.of(context)!.confirmPassword,
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
                  child: Text(AppLocalization.of(context)!.singUp),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.blue),
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
                  child: Text(AppLocalization.of(context)!.alreadyHave)),
            ],
          ),
        ),
    );
  }
}
