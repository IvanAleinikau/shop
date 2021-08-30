import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_register/register_event.dart';
import 'package:shop/core/bloc/bloc_register/register_state.dart';
import 'package:shop/core/bloc/bloc_splash/splash_bloc.dart';
import 'package:shop/core/bloc/bloc_splash/splash_event.dart';
import 'package:shop/data/repositories/auth_repository.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  AuthRepository repository = AuthRepository();
  final SplashBloc splashBloc;
  
  RegisterBloc(this.splashBloc) : super(RegisterState.initRegisterState());

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if(event is RegisterUserEvent){
      repository.createAccount(email: event.email, password: event.password).then((value) => {
        if(value=='Account created'){
          splashBloc.add(CheckCurrentUser())
        }
      });
    }
  }
}
