import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/core/models/user_model.dart';

part 'user_state.freezed.dart';

@freezed
abstract class UserState with _$UserState{

  factory UserState.initState() = _UserInitState;

  factory UserState.user(CustomUser user) = _User;

}