import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/theme/color_palette.dart';
import 'package:shop/app/widgets/app_logo.dart';
import 'package:shop/app/widgets/app_menu.dart';
import 'package:shop/app/widgets/auth/auth_button.dart';
import 'package:shop/app/widgets/auth/auth_input.dart';
import 'package:shop/app/widgets/auth/auth_text_button.dart';
import 'package:shop/core/bloc/bloc_register/register_bloc.dart';
import 'package:shop/core/bloc/bloc_register/register_event.dart';
import 'package:shop/core/bloc/bloc_register/register_state.dart';
import 'package:shop/core/localization/app_localization.dart';

import 'login_page.dart';

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
                      child: AppLogo(),
                    ),
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
                    AuthInput(
                      controller: _confirmPassword,
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 15),
                      obscure: true,
                      labelText: AppLocalization.of(context)!.confirmPassword,
                      hintText: AppLocalization.of(context)!.confirmPassword,
                    ),
                    AuthButton(
                      text: AppLocalization.of(context)!.singUp,
                      onPressed: () =>
                          BlocProvider.of<RegisterBloc>(context).add(
                        RegisterUserEvent(
                          email: _email.text.trim(),
                          password: _password.text.trim(),
                          confirmPassword: _confirmPassword.text.trim(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    AuthTextButton(
                      padding: const EdgeInsets.only(bottom: 15),
                      textStyle: const TextStyle(fontSize: 15),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      ),
                      text: AppLocalization.of(context)!.alreadyHave,
                    ),
                  ],
                ),
              );
            },
            created: () {
              return AppMenu();
            },
          ),
        );
      },
    );
  }
}
