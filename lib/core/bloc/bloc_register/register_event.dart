import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.freezed.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {

  factory RegisterEvent.registerEvent({required String email,required String password,required String confirmPassword}) = RegisterUserEvent;
}
