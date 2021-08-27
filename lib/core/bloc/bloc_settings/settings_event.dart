import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.freezed.dart';

@freezed
abstract class SettingEvent with _$SettingEvent{

  factory SettingEvent.resetPage() = ResetPage;

  factory SettingEvent.loadEng() = LoadEng;

  factory SettingEvent.loadRus() = LoadRus;
}

