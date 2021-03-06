import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState{

  factory AuthState.initAuthState() = _InitAuthState;

}
