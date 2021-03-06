import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  factory RegisterState.initRegisterState() = _InitRegisterState;

  factory RegisterState.created() = _Created;
}
