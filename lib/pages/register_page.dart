import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_register/register_bloc.dart';
import 'package:shop/core/bloc/bloc_register/register_event.dart';
import 'package:shop/core/bloc/bloc_register/register_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return Scaffold(
          body: state.when(
            initRegisterState: () {
              return SingleChildScrollView(
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
                        obscureText: true,
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
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 15),
                      child: TextField(
                        obscureText: true,
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
                          BlocProvider.of<RegisterBloc>(context).add(
                            RegisterUserEvent(
                              email: _email.text.trim(),
                              password: _password.text.trim(),
                              confirmPassword: _confirmPassword.text.trim(),
                            ),
                          );
                        },
                        child: Text(AppLocalization.of(context)!.singUp),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black),
                          textStyle: MaterialStateProperty.all(
                            const TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(bottom: 15),
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Text(AppLocalization.of(context)!.alreadyHave),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
