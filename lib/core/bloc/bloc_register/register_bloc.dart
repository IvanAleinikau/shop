import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shop/core/bloc/bloc_register/register_event.dart';
import 'package:shop/core/bloc/bloc_register/register_state.dart';
import 'package:shop/core/bloc/bloc_splash/splash_bloc.dart';
import 'package:shop/core/bloc/bloc_splash/splash_event.dart';
import 'package:shop/data/repositories/auth_repository.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final repository = GetIt.instance<AuthRepository>();
  final SplashBloc splashBloc;

  RegisterBloc(this.splashBloc) : super(RegisterState.initRegisterState());

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    yield* event.map(
      registerEvent: _registerEvent,
    );
  }

  Stream<RegisterState> _registerEvent(RegisterUserEvent event) async* {
    final account = await repository.createAccount(email: event.email, password: event.password);
    if (account == 'Account created') {
      splashBloc.add(CheckCurrentUser());
    }
  }
}
