import 'dart:async';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_settings/settings_event.dart';
import 'package:shop/core/bloc/bloc_settings/settings_state.dart';
import 'package:shop/core/localization/app_localization.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingStateInit());

  @override
  Stream<SettingState> mapEventToState(SettingEvent event) async* {
    if (event is LoadEng) {
      AppLocalization.load(const Locale('en', 'US'));
      yield ResetPage();
    }
    if (event is LoadRus) {
      AppLocalization.load(const Locale('ru', 'RUS'));
      yield ResetPage();
    }
  }
}
