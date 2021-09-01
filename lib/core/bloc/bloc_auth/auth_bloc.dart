import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_auth/auth_event.dart';
import 'package:shop/core/bloc/bloc_auth/auth_state.dart';
import 'package:shop/core/bloc/bloc_splash/splash_bloc.dart';
import 'package:shop/core/bloc/bloc_splash/splash_event.dart';
import 'package:shop/data/repositories/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository repository = AuthRepository();

  final SplashBloc splashBloc;

  AuthBloc(this.splashBloc) : super(AuthState.initAuthState());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      logIn: _logInEvent,
      logOut: _logOutEvent,
    );
  }

  Stream<AuthState> _logInEvent(LogInEvent event) async* {
    final user = await repository.signIn(email: event.email, password: event.password);
    if (user == 'Welcome') {
      splashBloc.add(CheckCurrentUser());
    }
  }

  Stream<AuthState> _logOutEvent(LogOutEvent event) async* {
    final user = await repository.signOut();
    if (user == 'singOut') {
      splashBloc.add(CheckCurrentUser());
    }
  }
}
