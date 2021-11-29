import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/pages/register_page.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/widgets/app_logo.dart';
import 'package:shop/app/widgets/auth/auth_button.dart';
import 'package:shop/app/widgets/auth/auth_input.dart';
import 'package:shop/app/widgets/auth/auth_text_button.dart';
import 'package:shop/core/bloc/bloc_auth/auth_bloc.dart';
import 'package:shop/core/bloc/bloc_auth/auth_event.dart';
import 'package:shop/core/bloc/bloc_auth/auth_state.dart';
import 'package:shop/core/localization/app_localization.dart';

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
                  color: ColorPalette.authBackColor,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AppLogo(),
                      AuthInput(
                        controller: _email,
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        obscure: false,
                        labelText: AppLocalization.of(context)!.email,
                        hintText: AppLocalization.of(context)!.enterEmail,
                      ),
                      AuthInput(
                        controller: _password,
                        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                        obscure: true,
                        labelText: AppLocalization.of(context)!.password,
                        hintText: AppLocalization.of(context)!.enterPassword,
                      ),
                      AuthButton(
                        text: AppLocalization.of(context)!.logIn,
                        onPressed: () => BlocProvider.of<AuthBloc>(context).add(
                          LogInEvent(
                            _email.text.trim(),
                            _password.text.trim(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 130,
                      ),
                      AuthTextButton(
                        padding: const EdgeInsets.only(bottom: 15),
                        textStyle: const TextStyle(fontSize: 15),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        ),
                        text: AppLocalization.of(context)!.haveAcc,
                      ),
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
