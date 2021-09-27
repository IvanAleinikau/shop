import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_splash/splash_event.dart';
import 'package:shop/core/bloc/bloc_splash/splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  FirebaseAuth auth = FirebaseAuth.instance;

  SplashBloc() : super(SplashState.initState());

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    yield* event.map(
      checkCurrentUser: _checkCurrentUser,
    );
  }

  Stream<SplashState> _checkCurrentUser(CheckCurrentUser event) async* {
    if (event is CheckCurrentUser) {
      if (auth.currentUser != null) {
        yield SplashState.userLogIn();
      } else {
        yield SplashState.userLogOut();
      }
    }
  }
}
