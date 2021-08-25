import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_register/register_event.dart';
import 'package:shop/core/bloc/bloc_register/register_state.dart';
import 'package:shop/data/repositories/auth_repository.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitState());

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if (event is RegisterUser) {
      if (event.email.isNotEmpty &
          (event.password.isNotEmpty == event.confirmPassword.isNotEmpty)) {
        AuthRepository()
            .createAccount(email: event.email, password: event.password);
        yield UserCreated();
      } else {
        yield EmptyState();
      }
    } else {
      yield EmptyState();
    }
  }
}
