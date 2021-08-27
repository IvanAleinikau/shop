import 'dart:async';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_settings/settings_event.dart';
import 'package:shop/core/bloc/bloc_settings/settings_state.dart';
import 'package:shop/core/localization/app_localization.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingState.initState());

  @override
  Stream<SettingState> mapEventToState(SettingEvent event) async* {
    if (event is LoadEng) {
      AppLocalization.load(const Locale('en', 'US'));
      yield SettingState.loading();
    }
    if (event is LoadRus) {
      AppLocalization.load(const Locale('ru', 'RUS'));
      yield SettingState.loading();
    }
    if(event is ResetPage){
      yield SettingState.initState();
    }
  }
}
