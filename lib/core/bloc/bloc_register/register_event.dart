import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.freezed.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent{

  factory RegisterEvent.registerEvent(String email, String password, String confirmPassword ) = RegisterUserEvent;

}
