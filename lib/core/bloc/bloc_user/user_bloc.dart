import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shop/core/bloc/bloc_user/user_event.dart';
import 'package:shop/core/bloc/bloc_user/user_state.dart';
import 'package:shop/core/models/user_model.dart';
import 'package:shop/data/service/user_service.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final service = GetIt.instance<UserService>();
  late CustomUser user;
  late Gender? gender;

  UserBloc() : super(UserState.initState());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield* event.map(
      changeGender: _changeGender,
      fetchUser: _fetchUser,
      changeIndex: _changeIndex,
      changeNames: _changeNames,
    );
  }

  Stream<UserState> _changeIndex(ChangeIndex event) async* {
    await service.changeIndex(event.index);
  }

  Stream<UserState> _changeNames(ChangeNames event) async* {
    await service.changeNames(event.firstName, event.surname);
  }

  Stream<UserState> _changeGender(ChangeGender event) async* {
    await service.changeGender(event.gender);
  }

  Stream<UserState> _fetchUser(FetchUser event) async* {
    user = await service.fetchUser();
    yield UserState.user(user);
    if (user.gender == 'Male') {
      gender = Gender.male;
    } else if (user.gender == 'Female') {
      gender = Gender.female;
    } else {
      gender = Gender.unknown;
    }
  }
}

enum Gender {
  male,
  female,
  unknown,
}
