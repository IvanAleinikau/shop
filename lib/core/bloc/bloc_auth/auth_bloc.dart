import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_auth/auth_event.dart';
import 'package:shop/core/bloc/bloc_auth/auth_state.dart';
import 'package:shop/data/repositories/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  FirebaseAuth auth = FirebaseAuth.instance;

  AuthBloc() : super(AuthInitState());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is CheckCurrentUser) {
      if (auth.currentUser != null) {
        yield LogIn();
      } else {
        yield LogOut();
      }
    } else if (event is LoadUser) {
      AuthRepository()
          .signIN(email: event.email, password: event.password)
          .then((value) async* {
        if (value == 'Welcome') {
          yield LogIn();
        } else {
          yield LogOut();
        }
      });
    } else if (event is UnloadUser) {
      AuthRepository().signOut();
      yield LogOut();
    } else {
      yield AuthInitState();
    }
  }
}
