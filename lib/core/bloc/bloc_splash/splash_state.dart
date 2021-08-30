import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
abstract class SplashState with _$SplashState{

  factory SplashState.initState() = _SplashInitState;

  factory SplashState.userLogIn() = _UserLogIn;

  factory SplashState.userLogOut() = _UserLogOut;
}