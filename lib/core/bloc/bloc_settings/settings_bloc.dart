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
    yield* event.map(
      resetPage: _resetPage,
      loadEng: _loadEng,
      loadRus: _loadRus,
    );
  }

  Stream<SettingState> _loadEng(LoadEng event) async* {
    AppLocalization.load(const Locale('en', 'US'));
    yield SettingState.loading();
  }

  Stream<SettingState> _loadRus(LoadRus event) async* {
    AppLocalization.load(const Locale('ru', 'RUS'));
    yield SettingState.loading();
  }

  Stream<SettingState> _resetPage(ResetPage event) async* {
    yield SettingState.initState();
  }
}
