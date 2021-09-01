import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {

  factory AuthEvent.logIn(
    String email,
    String password,
  ) = LogInEvent;

  factory AuthEvent.logOut() = LogOutEvent;
}
