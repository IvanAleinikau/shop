import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class CustomUser with _$CustomUser{
  factory CustomUser({
    required String email,
    required String firstName,
    required String surname,
    required String gender,
    required int postOfficeIndex,
  }) = _CustomUser;

}
