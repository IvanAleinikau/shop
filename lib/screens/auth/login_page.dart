import 'package:flutter/material.dart';
import 'package:shop/locale/app_localization.dart';
import 'package:shop/provider/auth_provider.dart';
import 'package:shop/screens/auth/register_page.dart';
import 'package:shop/screens/news/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white70,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 320,
                child: const Center(
                  child: Image(
                    image: AssetImage('asset/image/logo_shop.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
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
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
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
                      if (value == 'Welcome') {
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
                  child: Text(AppLocalization.of(context)!.logIn),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.black54),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(bottom: 15),
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RegisterPage()));
                  },
                  child: Text(AppLocalization.of(context)!.haveAcc)),
            ],
          ),
        ),
      ),
    );
  }
}
