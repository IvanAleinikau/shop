import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.freezed.dart';

@freezed
abstract class UserEvent with _$UserEvent{

  factory UserEvent.fetchUser() = FetchUser;

  factory UserEvent.changeGender(String gender) = ChangeGender;

  factory UserEvent.changeIndex(int index) = ChangeIndex;

  factory UserEvent.changeNames(String firstName, String surname) = ChangeNames;
}