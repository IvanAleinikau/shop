import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_auth/auth_bloc.dart';
import 'package:shop/core/bloc/bloc_auth/auth_event.dart';
import 'package:shop/core/bloc/bloc_auth/auth_state.dart';
import 'package:shop/core/localization/app_localization.dart';
import 'package:shop/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          body: state.when(
              initAuthState: () {
                return Container(
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
                                hintText:
                                AppLocalization.of(context)!.enterEmail),
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
                              hintText:
                              AppLocalization.of(context)!.enterPassword,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<AuthBloc>(context).add(LogInEvent(_email.text.trim(), _password.text.trim()));
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
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            },
                            child: Text(AppLocalization.of(context)!.haveAcc)),
                      ],
                    ),
                  ),
                );
              },
          ),
        );
      },
    );
  }
}
