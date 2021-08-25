import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_auth/auth_bloc.dart';
import 'package:shop/core/bloc/bloc_auth/auth_event.dart';
import 'package:shop/core/bloc/bloc_auth/auth_state.dart';
import 'package:shop/pages/login_page.dart';
import 'package:shop/pages/news_page.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      final AuthBloc _bloc = BlocProvider.of<AuthBloc>(context);
      _bloc.add(CheckCurrentUser());
      if (state is LogIn) {
        return NewsPage();
      } else if (state is LogOut) {
        return LoginPage();
      } else {
        _bloc.add(CheckCurrentUser());
        return const CircularProgressIndicator();
      }
    });
  }
}
