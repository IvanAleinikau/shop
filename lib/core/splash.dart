import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/app/pages/login_page.dart';
import 'package:shop/app/widgets/app_menu.dart';
import 'package:shop/core/bloc/bloc_splash/splash_bloc.dart';
import 'package:shop/core/bloc/bloc_splash/splash_event.dart';
import 'package:shop/core/bloc/bloc_splash/splash_state.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return state.when(
          initState: () {
            BlocProvider.of<SplashBloc>(context).add(CheckCurrentUser());
            return Container();
          },
          userLogIn: () {
            return AppMenu();
          },
          userLogOut: () {
            return LoginPage();
          },
        );
      },
    );
  }
}
