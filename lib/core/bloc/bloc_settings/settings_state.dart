import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
abstract class SettingState with _$SettingState{

  factory SettingState.initState() = _InitState;

  factory SettingState.loading() = _Loading;

}

