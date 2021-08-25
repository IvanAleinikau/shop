abstract class RegisterEvent{}

class RegisterUser extends RegisterEvent {
  final String email;
  final String password;
  final String confirmPassword;

  RegisterUser({
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}